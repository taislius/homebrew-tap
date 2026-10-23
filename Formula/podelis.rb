class Podelis < Formula
  desc "Terminal UI SQL client for PostgreSQL, MySQL and SQLite"
  homepage "https://github.com/taislius/podelis"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.6.0/podelis-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "dfa9721a48b066695907b4ed9176e81f40d0b8defcd8c54d2fcc77e3b4f69e96"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.6.0/podelis-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "dc4ff4616b15d1701fd5125a2533e2a23662cde8e891782d3456e712923dbfa9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.6.0/podelis-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b4af17b0e374f88bed15268c7acacfff0ca3a487cb1820dfd4f929572239f5c"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.6.0/podelis-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c02f21d700b78a0d267c34f46e6998e1a19099cc1b299e83250b305a835409c"
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
