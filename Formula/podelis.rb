class Podelis < Formula
  desc "Terminal UI SQL client for PostgreSQL, MySQL and SQLite"
  homepage "https://github.com/taislius/podelis"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.5.2/podelis-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "9d7024c03e0d1e22706701db0d551cd7df20cfa4dba4842b2e5db8a53a29a0a8"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.5.2/podelis-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "23f2d406fc111a41c12e40b73bde8b46fd21da552ed3614ea6dd68f76f03a70d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.5.2/podelis-v0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "98c34588d74ab76082ffb3bb71a5a742d8d2ac4cd3d14218b2ef7abbd147db51"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.5.2/podelis-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22ad8f61004df8fd2a64f8a11aa1283fac54531077434a251cb512a674433014"
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
