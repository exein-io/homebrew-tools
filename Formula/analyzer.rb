class Analyzer < Formula
  desc "CLI for Exein Analyzer - firmware and container security scanning"
  homepage "https://github.com/exein-io/homebrew-tools"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v0.6.0/analyzer-aarch64-apple-darwin.tar.gz"
      sha256 "6a687db24126e2eb4acc92ab9741b80d035638785a170b0774ec137d310e347f"
    end

    on_intel do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v0.6.0/analyzer-x86_64-apple-darwin.tar.gz"
      sha256 "b4f947ffa57de875961ea3510f2e1147766a2368de1a00b7de5102a3b5a744b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v0.6.0/analyzer-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ffc913709db2445de1358e5f6588dd92a62a8e68edcf34514ea15d903c8d8cf1"
    end

    on_intel do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v0.6.0/analyzer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5691606edfd2c6c24ac58b67392900c8ea90db6a39400bd820ca02d295a3d9e9"
    end
  end

  def install
    bin.install "analyzer"
  end

  test do
    assert_match "analyzer #{version}", shell_output("#{bin}/analyzer --version")
  end
end
