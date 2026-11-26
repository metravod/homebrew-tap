class Zori < Formula
  desc "Run local CLI coding agents in parallel with YAML flows"
  homepage "https://github.com/metravod/zori"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/metravod/zori/releases/download/v0.3.0/zori-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "3744754cc9273cd78d0f43a0e7b00f4e56af90441ae9b3b80018251507abd0bb"
    end
    on_intel do
      url "https://github.com/metravod/zori/releases/download/v0.3.0/zori-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "693c51c0d4ac4a60236167f5e39f388da152b139bc42feb2b6f03ef9291db8c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metravod/zori/releases/download/v0.3.0/zori-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "087c8eb34d3fab71f834e3008eb6b043b923618d06023c13f0da2925da5dc0b8"
    end
    on_intel do
      url "https://github.com/metravod/zori/releases/download/v0.3.0/zori-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eaea9fccf9199b2d721959e3db0e959bdbc5676fc471bba3852096fca3a31a31"
    end
  end

  def install
    bin.install "zori"
  end

  test do
    assert_equal "zori #{version}", shell_output("#{bin}/zori --version").strip
  end
end
