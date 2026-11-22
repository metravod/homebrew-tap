class Zori < Formula
  desc "Run local CLI coding agents in parallel with YAML flows"
  homepage "https://github.com/metravod/zori"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/metravod/zori/releases/download/v0.2.0/zori-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "d08cc20338efad87e242dd42e16e49b0bd205f996e367c50c651a7de3a04e82d"
    end
    on_intel do
      url "https://github.com/metravod/zori/releases/download/v0.2.0/zori-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "4d3858a7ecd5fc6059c123e347509d001f97c1ed7a1f336dc22b7ef13aa3fa26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metravod/zori/releases/download/v0.2.0/zori-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "31a7e8df8c0d1b9e26fa78e7b25f772946ff1225180d01373a7ae78501db0036"
    end
    on_intel do
      url "https://github.com/metravod/zori/releases/download/v0.2.0/zori-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b904864545421d5736e7c41246d747a1c2e9fed10f78722f3e1eeea2e8eaf9f4"
    end
  end

  def install
    bin.install "zori"
  end

  test do
    assert_equal "zori #{version}", shell_output("#{bin}/zori --version").strip
  end
end
