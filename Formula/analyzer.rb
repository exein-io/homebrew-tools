class Analyzer < Formula
  desc "CLI for Exein Analyzer - firmware and container security scanning"
  homepage "https://github.com/exein-io/homebrew-tools"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v0.7.0/analyzer-aarch64-apple-darwin.tar.gz"
      sha256 "9a19a1616fa5aa2e1fa8eaf8f66dd0d716bcb86c47d9f58adb34a6d0ec938c4f"
    end

    on_intel do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v0.7.0/analyzer-x86_64-apple-darwin.tar.gz"
      sha256 "b94838102ca5b7f3caba7c9af95e2a1c99e7830f5ccab377387268f69df0a11b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v0.7.0/analyzer-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a206eb3382ba7cc37709742644b011c9bc800694c26506f2c9ab453cd003cce7"
    end

    on_intel do
      url "https://github.com/exein-io/homebrew-tools/releases/download/analyzer-cli-v0.7.0/analyzer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15f77110d95aba3529661e0b2556457e2388bc93dc48366f3aa0da688592e90f"
    end
  end

  def install
    bin.install "analyzer"
  end

  test do
    assert_match "analyzer #{version}", shell_output("#{bin}/analyzer --version")
  end
end
