class Analyzer < Formula
  desc "CLI for Exein Analyzer - firmware and container security scanning"
  homepage "https://github.com/exein-io/homebrew-tools"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v0.5.1/analyzer-aarch64-apple-darwin.tar.gz"
      sha256 "6c3da368acc4acb1b8e89ea9539d6f69d6dc7b41ca8cd7910538bca5000b67eb"
    end

    on_intel do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v0.5.1/analyzer-x86_64-apple-darwin.tar.gz"
      sha256 "fd6694b821216b2ddbc9d8163979b80959fad192a723b63cd2fabe96b4ed9721"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v0.5.1/analyzer-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c52f9ecb4424873ca1fcb82930075c01e3cc97ddc563362e1e6d553aa89ef4d"
    end

    on_intel do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v0.5.1/analyzer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "07c62b8698ee349a43c1b94eba09fd611971250754545490a0ecbb25b62d0f6e"
    end
  end

  def install
    bin.install "analyzer"
  end

  test do
    assert_match "analyzer-cli", shell_output("#{bin}/analyzer --version")
  end
end
