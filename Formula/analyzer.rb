class Analyzer < Formula
  desc "CLI for Exein Analyzer - firmware and container security scanning"
  homepage "https://github.com/exein-io/analyzer-cli"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/exein-io/analyzer-cli/releases/download/v0.2.0/analyzer-aarch64-apple-darwin.tar.gz"
      sha256 "9635ab82af84b7a7ec9a0193a382c2fc16c8d2976b445dd8cafc6639e8c506f2"
    end

    on_intel do
      url "https://github.com/exein-io/analyzer-cli/releases/download/v0.2.0/analyzer-x86_64-apple-darwin.tar.gz"
      sha256 "ed3cd0b61ec82390dc5d4e6ba8ea6cd2e5cdd3073b9753fd7af50aaeb4769911"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/exein-io/analyzer-cli/releases/download/v0.2.0/analyzer-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a966f185e40db6d719e5165873050ef4587e0619a8670a85aab012be36861a94"
    end

    on_intel do
      url "https://github.com/exein-io/analyzer-cli/releases/download/v0.2.0/analyzer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37619eddede50f813a2699be86a9dd1b65f6849bc605f32a8f4fb93e08201e4b"
    end
  end

  def install
    bin.install "analyzer"
  end

  test do
    assert_match "analyzer-cli", shell_output("#{bin}/analyzer --version")
  end
end
