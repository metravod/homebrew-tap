"""Render the Zori formula from the latest stable GitHub release."""
import json
import re
import subprocess
from pathlib import Path

repo = "metravod/zori"
release = json.loads(subprocess.check_output(["gh", "api", f"repos/{repo}/releases/latest"]))
tag = release["tag_name"]
if not re.fullmatch(r"v[0-9]+\.[0-9]+\.[0-9]+", tag) or release["draft"] or release["prerelease"]:
    raise SystemExit("Expected a stable Zori release tag")

assets = {asset["name"]: asset for asset in release["assets"]}
version = tag[1:]
lines = [
    "class Zori < Formula",
    '  desc "Run local CLI coding agents in parallel with YAML flows"',
    f'  homepage "https://github.com/{repo}"',
    f'  version "{version}"',
    '  license "MIT"',
]
for system, suffix in [("macos", "apple-darwin"), ("linux", "unknown-linux-gnu")]:
    lines.extend(["", f"  on_{system} do"])
    for family, arch in [("arm", "aarch64"), ("intel", "x86_64")]:
        name = f"zori-{tag}-{arch}-{suffix}.tar.gz"
        asset = assets[name]
        digest = asset.get("digest") or ""
        if asset["state"] != "uploaded" or not re.fullmatch(r"sha256:[a-f0-9]{64}", digest):
            raise SystemExit(f"Expected a complete archive and SHA-256 for {name}")
        lines += [
            f"    on_{family} do",
            f'      url "https://github.com/{repo}/releases/download/{tag}/{name}"',
            f'      sha256 "{digest.removeprefix("sha256:")}"',
            "    end",
        ]
    lines.append("  end")

lines.extend([
    "", "  def install", '    bin.install "zori"', "  end",
    "", "  test do", '    assert_equal "zori #{version}", shell_output("#{bin}/zori --version").strip',
    "  end", "end",
])
dest = Path("Formula/zori.rb")
dest.parent.mkdir(exist_ok=True)
dest.write_text("\n".join(lines) + "\n")
