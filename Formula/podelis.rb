class Podelis < Formula
  desc "Terminal UI SQL client for PostgreSQL, MySQL and SQLite"
  homepage "https://github.com/taislius/podelis"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.8.1/podelis-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "f14ce2d64de7f70e1dec59dbc9238a052be08c89383eff2915074d8cae4a6d91"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.8.1/podelis-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "6fc3d47687462c22377dad705ad4d0858a702575aca5d43d59178ab93f212859"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.8.1/podelis-v0.8.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18e2bb16d9dbc6481621ec317236e191b1adb5a4f801fee2155521d175261e94"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.8.1/podelis-v0.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db3bfa6f5f70fd82f3da699b93e37a7ecf8b322c80fb73af859512b5304c3b0e"
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
