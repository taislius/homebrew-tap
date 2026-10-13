class Podelis < Formula
  desc "Terminal UI SQL client for PostgreSQL, MySQL and SQLite"
  homepage "https://github.com/taislius/podelis"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.5.1/podelis-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "5a724e204e2e42fd6d3b16f88152cfb1c44f1a2e7b676ba80aa6f32f76e78227"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.5.1/podelis-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "abfb6eb88d35e99a5a60e294c5c611f26c3929341305aa01623d81923a161c63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.5.1/podelis-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "30d7907a40074cdf0dc7b462bea394b8491cddb02e4aefae5d52740ce0c781b8"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.5.1/podelis-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f59c28ac32c0ccb7dd1c4c7f77e32dbe1126fd24898491d356b86b2f376ed78e"
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
