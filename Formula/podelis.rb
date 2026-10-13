class Podelis < Formula
  desc "Terminal UI SQL client for PostgreSQL, MySQL and SQLite"
  homepage "https://github.com/taislius/podelis"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.5.0/podelis-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "e5528a8e07e87e33258eccfd80fad8e2f6f8b8a9b96ac882b4e15c2440a46107"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.5.0/podelis-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "9da456068ced16c1cfe5aa74466b0edd0b66b57baa6d9077beb8f158686d74b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.5.0/podelis-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1c0c8807ffd9bce0cb041ff2d64aadf8075e8e1ca92c5e02c7ce1fd55c456537"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.5.0/podelis-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e6697ccec4a5b32514269dd1055c948c66b5d7a75259b386910aa19ad926accf"
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
