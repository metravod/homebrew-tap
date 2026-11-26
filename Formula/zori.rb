class Zori < Formula
  desc "Run local CLI coding agents in parallel with YAML flows"
  homepage "https://github.com/metravod/zori"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/metravod/zori/releases/download/v0.3.1/zori-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "3355ce72b8691b1594390df2f0f568c6974c1368d5df3118da21acf156d936f6"
    end
    on_intel do
      url "https://github.com/metravod/zori/releases/download/v0.3.1/zori-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "6e3f24a1541b55a4c9d14af37cf778284956f5e5cddc7dbaf74cab1442e6b597"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metravod/zori/releases/download/v0.3.1/zori-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33034a08819daf35f6481026e7ce9f62a872e31015bf0f5f5da6c0bfa5b7a01f"
    end
    on_intel do
      url "https://github.com/metravod/zori/releases/download/v0.3.1/zori-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "853eda45ab991910a24452acc1c0e837ea4ed5591b27388eb0909b4496711c7c"
    end
  end

  def install
    bin.install "zori"
  end

  test do
    assert_equal "zori #{version}", shell_output("#{bin}/zori --version").strip
  end
end
