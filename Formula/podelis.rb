class Podelis < Formula
  desc "Terminal UI SQL client for PostgreSQL, MySQL and SQLite"
  homepage "https://github.com/taislius/podelis"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.5.3/podelis-v0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "0ae727d8ed21365b3063202e116f5981046209f8a89bbf1e57d210361e02e329"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.5.3/podelis-v0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "0f943805298d740b5b1720e8cc2a033ac8dcaa66cf678a19d70054e8151d6221"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.5.3/podelis-v0.5.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f7133b280174bbd3eb59f4af52370340f4abe7c4032e32aae1a28a3dc3b3107a"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.5.3/podelis-v0.5.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c65648ec13516777dbd81bccceb03fabc3bf67b8938abb80b47236595ed4baeb"
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
