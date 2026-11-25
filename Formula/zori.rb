class Zori < Formula
  desc "Run local CLI coding agents in parallel with YAML flows"
  homepage "https://github.com/metravod/zori"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/metravod/zori/releases/download/v0.2.4/zori-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "2264a59a36d8f24077506c8e4ee7f4756ddf038e661c3f5e5160f87245c5395e"
    end
    on_intel do
      url "https://github.com/metravod/zori/releases/download/v0.2.4/zori-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "b875a60ef8716a75d210ad4bc2dd74429c90bbf979a65ea7da85682ae0d0947c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metravod/zori/releases/download/v0.2.4/zori-v0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16eee416f50f76083a549d7c89adb9c00f3b2a36789540cc6a2ef5bef46c10ce"
    end
    on_intel do
      url "https://github.com/metravod/zori/releases/download/v0.2.4/zori-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "20803261a6672006b432e2c45a9db74cdd831634fae94a8e2f0428145760eb14"
    end
  end

  def install
    bin.install "zori"
  end

  test do
    assert_equal "zori #{version}", shell_output("#{bin}/zori --version").strip
  end
end
