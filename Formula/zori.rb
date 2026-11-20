class Zori < Formula
  desc "Run local CLI coding agents in parallel with YAML flows"
  homepage "https://github.com/metravod/zori"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/metravod/zori/releases/download/v0.1.0/zori-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ba2a373a183112f9658928e9cb6f8dae75a1d178e81917dafd8b5aeb190c1723"
    end
    on_intel do
      url "https://github.com/metravod/zori/releases/download/v0.1.0/zori-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "7eb7aa7eec4cfe8ce5bb371b509b10cc9b31586d0f57ec0991f4f24936e77a12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metravod/zori/releases/download/v0.1.0/zori-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d99828ddf6e184fe560115f910363943a2e5dc7933fa227b63e4188a0f86fb2f"
    end
    on_intel do
      url "https://github.com/metravod/zori/releases/download/v0.1.0/zori-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c31633962ce67ea7aeab3eb777ea1b3f95c9c26ed04c1864aec2c9c9c261045"
    end
  end

  def install
    bin.install "zori"
  end

  test do
    assert_equal "zori #{version}", shell_output("#{bin}/zori --version").strip
  end
end
