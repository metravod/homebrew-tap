class Zori < Formula
  desc "Run local CLI coding agents in parallel with YAML flows"
  homepage "https://github.com/metravod/zori"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/metravod/zori/releases/download/v0.2.1/zori-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "6af935abc6e966622704785773eca728c6ae27a26043c836ae862910ec7e7777"
    end
    on_intel do
      url "https://github.com/metravod/zori/releases/download/v0.2.1/zori-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "12dc0d486234744bebe89e9affaaf48093524b3b16a9c43addf5f4f15d99f5d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metravod/zori/releases/download/v0.2.1/zori-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c2567f19ccabdb6be90ee62eaaab8415adee507d9d80e5b5faa0984844e7cf7"
    end
    on_intel do
      url "https://github.com/metravod/zori/releases/download/v0.2.1/zori-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b20161267bf0b8371fce84fc4d2f5dc73a1a083310f34d1383f5fa16ae1d9d12"
    end
  end

  def install
    bin.install "zori"
  end

  test do
    assert_equal "zori #{version}", shell_output("#{bin}/zori --version").strip
  end
end
