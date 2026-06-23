class Analyzer < Formula
  desc "CLI for Exein Analyzer - firmware and container security scanning"
  homepage "https://github.com/exein-io/analyzer-cli"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-0.4.1/analyzer-aarch64-apple-darwin.tar.gz"
      sha256 "0c2cf9101e292d57e33e0bd60db0fe600e1a9acf00a76aabbc7fbda46b1ba595"
    end

    on_intel do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-0.4.1/analyzer-x86_64-apple-darwin.tar.gz"
      sha256 "2a9e817a148eae5909bbf4a4145abca7b3096c10d41a90616717eb67b0660aa0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-0.4.1/analyzer-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db3edfb1a5e703274ac177117b0a00580116053401de063f1f4e54afaf9d0fc9"
    end

    on_intel do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-0.4.1/analyzer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b9a6649ea6dea7d4f5f3cca76c7fc468dc904f26650a6d19e1e58c95f93364a"

    end
  end

  def install
    bin.install "analyzer"
  end

  test do
    assert_match "analyzer-cli", shell_output("#{bin}/analyzer --version")
  end
end
