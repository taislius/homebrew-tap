class Podelis < Formula
  desc "Terminal UI SQL client for PostgreSQL, MySQL and SQLite"
  homepage "https://github.com/taislius/podelis"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.3.0/podelis-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "9c3899ef0d6f1c4db3047a0767a3802031b8e47a9f575a8468ab5374ce193633"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.3.0/podelis-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "e7ac879a411ab74343d8cb920da1dc5583c9a98ace15f86f6af2331728636d0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.3.0/podelis-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f77e801420f239deffb5d3ec740723fddd2bfcf15210caa5b4789c3db07142dd"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.3.0/podelis-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ada76de0728ccceb945166d9260a13a9c22316f7f8df1c4238c7e4d067b4f8f"
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
