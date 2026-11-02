class Podelis < Formula
  desc "Terminal UI SQL client for PostgreSQL, MySQL and SQLite"
  homepage "https://github.com/taislius/podelis"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.7.3/podelis-v0.7.3-aarch64-apple-darwin.tar.gz"
      sha256 "790429cb1cdc4e42094f2d95e7a7ff2d4119aefbfaeb3a0f49daac0056291134"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.7.3/podelis-v0.7.3-x86_64-apple-darwin.tar.gz"
      sha256 "08dba9f2b52aca367b3e95310d06635b845b3265040becae9cb96dc1125fd69a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.7.3/podelis-v0.7.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4728a5b482a81ba6e76bd1bc140772fdba556ffe5404b0b6c949c25e712755d"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.7.3/podelis-v0.7.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bae62db0294ff098c19106a77dbc17f91250fafa61809f61eaa617aa7bbab2d6"
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
