class Analyzer < Formula
  desc "CLI for Exein Analyzer - firmware and container security scanning"
  homepage "https://github.com/exein-io/homebrew-tools"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v0.5.0/analyzer-aarch64-apple-darwin.tar.gz"
      sha256 "5c61d70c80957ea7916e8343d5dae0c0a051ef875010ef4d587a485d52755003"
    end

    on_intel do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v0.5.0/analyzer-x86_64-apple-darwin.tar.gz"
      sha256 "3be0f919106e420eac8fea87d364539f610282b93083ba712af6387880411c1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v0.5.0/analyzer-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a43fb3c9ed18d592cf41ac00e9de0903b70a6744e547d41ee96975dfc974dcf0"
    end

    on_intel do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v0.5.0/analyzer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33d26248c7650c44f25ded9a26194a463859bcd0157509b0bcbd18f0850920cb"
    end
  end

  def install
    bin.install "analyzer"
  end

  test do
    assert_match "analyzer-cli", shell_output("#{bin}/analyzer --version")
  end
end
