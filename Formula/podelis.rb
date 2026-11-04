class Podelis < Formula
  desc "Terminal UI SQL client for PostgreSQL, MySQL and SQLite"
  homepage "https://github.com/taislius/podelis"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.8.0/podelis-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "7c6943f623065285cef53303257c9413aa7314fee8f877c00fa28d46cd7a2edb"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.8.0/podelis-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "25bf0628e4add72ebee78d9517f1a9c2e40f392e792fa2e6bf15158320411e64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.8.0/podelis-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "178c5eacd829a57cfa6e3726df913a9ad5d22f34fb7c63e8bdbd155e5f32e845"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.8.0/podelis-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e755ded7eed36cd41aac080b47d8dc681c65fd31ad053ba69d5b40f747233d92"
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
