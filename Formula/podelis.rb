class Podelis < Formula
  desc "Terminal UI SQL client for PostgreSQL, MySQL and SQLite"
  homepage "https://github.com/taislius/podelis"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.7.2/podelis-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "808fa6f839688ece2e2a4e7efb80b430259ed64b00979f30a14cd5d35dcc32b3"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.7.2/podelis-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "a23ac7d3717579cb3a3a76f4b13b593785eddb349360fbda3ffa00f37f7baa0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.7.2/podelis-v0.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "76c487b81bdddfbb3f4c635036a7ca5a1c0ad47d7c6d54668e10780d0a3564cd"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.7.2/podelis-v0.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ca0ef24ecc553985d08e1a848920cb9e54e057470c1361b0f39240d3212dc69b"
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
