class Podelis < Formula
  desc "Terminal UI SQL client for PostgreSQL, MySQL and SQLite"
  homepage "https://github.com/taislius/podelis"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.7.4/podelis-v0.7.4-aarch64-apple-darwin.tar.gz"
      sha256 "34c56c84937fc9519511430fb2ed097d8c86a54a684b0cbe69a914ccd519b823"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.7.4/podelis-v0.7.4-x86_64-apple-darwin.tar.gz"
      sha256 "1414c4b3b5e09a84c84995838dc7cef031619c88057fc029de8d415686408f57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.7.4/podelis-v0.7.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9d538b284390af2a98d2c6e990bf40735fea6f88add4871dab142d5d42487bb"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.7.4/podelis-v0.7.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ea6e44a78cdbfa4014cac7749cc271f11a103dc8365201b9aea80222f0b8e91"
    end
  end

  def install
    bin.install "podelis"
    man1.install "podelis.1"
  end

  test do
    assert_match "podelis #{version}", shell_output("#{bin}/podelis --version")
  end
end
