class Analyzer < Formula
  desc "CLI for Exein Analyzer - firmware and container security scanning"
  homepage "https://github.com/exein-io/analyzer-cli"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/exein-io/analyzer-cli/releases/download/v0.1.0/analyzer-aarch64-apple-darwin.tar.gz"
      sha256 "e6b0ee9c5162d00702d7751f22ba44d699e4b5140aad563d847d46d56067612e"
    end

    on_intel do
      url "https://github.com/exein-io/analyzer-cli/releases/download/v0.1.0/analyzer-x86_64-apple-darwin.tar.gz"
      sha256 "96a94e4ac60197622138513268165084c3d6f71b5c1d2bd9d643a5a32424eb09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/exein-io/analyzer-cli/releases/download/v0.1.0/analyzer-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08fa618f8571af7c8d087a023dcc36d9becc0d78dacc3cca704b7560b633d1ed"
    end

    on_intel do
      url "https://github.com/exein-io/analyzer-cli/releases/download/v0.1.0/analyzer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c5f844d2b52861f54e3b6f09ef4d3aea3628e8c716dd11d4e8b15b9d1903a33"
    end
  end

  def install
    bin.install "analyzer"
  end

  test do
    assert_match "analyzer-cli", shell_output("#{bin}/analyzer --version")
  end
end
