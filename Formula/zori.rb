class Zori < Formula
  desc "Run local CLI coding agents in parallel with YAML flows"
  homepage "https://github.com/metravod/zori"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/metravod/zori/releases/download/v0.2.2/zori-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "5c59970db1b787dcca86c1d62af76888d98b5f8432c7a3d225e8c0a17891a763"
    end
    on_intel do
      url "https://github.com/metravod/zori/releases/download/v0.2.2/zori-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "e8e2e7bd78e9051b8c50b45bff8b61d6f5996508b434a9f70653b82b93c9c490"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metravod/zori/releases/download/v0.2.2/zori-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3298f8ab72a2f6f6a6925111b9a0f994909cbdacb6ce49e56d84cfd00635eee"
    end
    on_intel do
      url "https://github.com/metravod/zori/releases/download/v0.2.2/zori-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aafea944b9e67ecb4d748a6c88d6b945d79aeadcdef0884b4498b793da2cbee1"
    end
  end

  def install
    bin.install "zori"
  end

  test do
    assert_equal "zori #{version}", shell_output("#{bin}/zori --version").strip
  end
end
