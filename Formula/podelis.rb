class Podelis < Formula
  desc "Terminal UI SQL client for PostgreSQL, MySQL and SQLite"
  homepage "https://github.com/taislius/podelis"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.2.0/podelis-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "4d31408bb32fe36356fc6c15fcabee6a264b0bde9c161bb242062bb89e84f202"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.2.0/podelis-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "115e55fed0c1438fafdfbb5a5e2925cde2cea623d9481d9fdfa3b0f1a0691ef3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taislius/podelis/releases/download/v0.2.0/podelis-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c1af056fd713301bf5d8091c871d0d18effa2723b1a110f3ac4075ed993f60d"
    end
    on_intel do
      url "https://github.com/taislius/podelis/releases/download/v0.2.0/podelis-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "caf2730d49cbd844076e0ebe80ee1284061f7b1dbd3bfb08344ac5c15fed71b7"
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
