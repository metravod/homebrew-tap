class Zori < Formula
  desc "Run local CLI coding agents in parallel with YAML flows"
  homepage "https://github.com/metravod/zori"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/metravod/zori/releases/download/v0.2.3/zori-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "2b1af2aacb2b6020e9bb57b8faac27e3a1ea9482743cf7073ec083c7c60e33c0"
    end
    on_intel do
      url "https://github.com/metravod/zori/releases/download/v0.2.3/zori-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "c5b8757fa29db407677e8906b1ba5395deea492d48585ce9e5971f20cc41e530"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metravod/zori/releases/download/v0.2.3/zori-v0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e4e93f93a84028400162a9a79194b833e8db233a9e647b75aec9d18f94b8d51b"
    end
    on_intel do
      url "https://github.com/metravod/zori/releases/download/v0.2.3/zori-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0fe4d48409f37945c6325628876ec6e0672a7ab5f28e36c694d98f23a33a4f15"
    end
  end

  def install
    bin.install "zori"
  end

  test do
    assert_equal "zori #{version}", shell_output("#{bin}/zori --version").strip
  end
end
