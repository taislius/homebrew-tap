class Podelis < Formula
  desc "Terminal UI SQL client for PostgreSQL, MySQL and SQLite"
  homepage "https://github.com/taislius/podelis"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.4.0/podelis-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "29f4a15090b31a381d7e28a6cfef8a6727c30eaeff01109e9c0d249dabb3e1d6"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.4.0/podelis-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "b007e3f872d42798956669102c6db6e32da3074d1609da09ac9782de4d5c0e3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.4.0/podelis-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ec2ff83ba1c0a18c194a255687ad978579df2c5cd2eb4939f660616f152157a"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.4.0/podelis-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19f196225e818a639ea25fb1342cf6437c19bffe9f0f76d56df83f55fbfeafdc"
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
