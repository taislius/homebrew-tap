class Podelis < Formula
  desc "Terminal UI SQL client for PostgreSQL, MySQL and SQLite"
  homepage "https://github.com/taislius/podelis"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.7.5/podelis-v0.7.5-aarch64-apple-darwin.tar.gz"
      sha256 "31d74593c90c524469b41438a0c6269ec05c1c90698c200e8b06a5fe918f992c"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.7.5/podelis-v0.7.5-x86_64-apple-darwin.tar.gz"
      sha256 "2d39b49bfa1f696d7a8b670d955a2f79d502d294e6e6e3d1bb90742cf6fc7ed3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.7.5/podelis-v0.7.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16b0a05b99fcbf35e0d38c78615792fe134dcb428e370c56632f4015fbb9f4da"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.7.5/podelis-v0.7.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bc7dd3d51a3ccfffdab709b286a5c0ca50b4faa07f81fcc4af2b93290fa5a6d"
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
