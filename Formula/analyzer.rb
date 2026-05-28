class Analyzer < Formula
  desc "CLI for Exein Analyzer - firmware and container security scanning"
  homepage "https://github.com/exein-io/analyzer-cli"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/exein-io/analyzer-cli/releases/download/v0.2.2/analyzer-aarch64-apple-darwin.tar.gz"
      sha256 "2a302bbfdebd38f61f8877ddaaa07f21787e3799658929f47da5d9e867684967"
    end

    on_intel do
      url "https://github.com/exein-io/analyzer-cli/releases/download/v0.2.2/analyzer-x86_64-apple-darwin.tar.gz"
      sha256 "12cf032647bc0cc8b65008f5f3e367142b48450e9b4c4818c31654e3a76f5810"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/exein-io/analyzer-cli/releases/download/v0.2.2/analyzer-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7d5881380df1f395f73f25f0ae7380b7c4b2fd9b99134a789df7c58795c21238"
    end

    on_intel do
      url "https://github.com/exein-io/analyzer-cli/releases/download/v0.2.2/analyzer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "91de39abb7a7a483c71dbe9a5522d05ab625a72942eaf7f8d3deafc6c4195159"
    end
  end

  def install
    bin.install "analyzer"
  end

  test do
    assert_match "analyzer-cli", shell_output("#{bin}/analyzer --version")
  end
end
