class Analyzer < Formula
  desc "CLI for Exein Analyzer - firmware and container security scanning"
  homepage "https://github.com/exein-io/homebrew-tools"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v1.1.0/analyzer-aarch64-apple-darwin.tar.gz"
      sha256 "2e38330ce9f032b113c5b6afa8d2744a6a5c4d96a804badba7f26f28bf4cf8bc"
    end

    on_intel do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v1.1.0/analyzer-x86_64-apple-darwin.tar.gz"
      sha256 "28f710215ea29454f36973c6b4f1c3a9bf6754b8de670e56d13d463a4f45a5e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v1.1.0/analyzer-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f48b5e8d05e487407054ab382da92bcafbad3350662f5a4f5cd2a2aa58c7d69"
    end

    on_intel do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v1.1.0/analyzer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3cfdfad15d5d0fa44d296d28b29cb93673a3f636e47b441b92ca3a0e167c069"
    end
  end

  def install
    bin.install "analyzer"
  end

  test do
    assert_match "analyzer #{version}", shell_output("#{bin}/analyzer --version")
  end
end
