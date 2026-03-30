class Analyzer < Formula
  desc "CLI for Exein Analyzer - firmware and container security scanning"
  homepage "https://github.com/exein-io/analyzer-cli"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/exein-io/analyzer-cli/releases/download/v0.2.2/analyzer-aarch64-apple-darwin.tar.gz"
      sha256 "4583ffb44963bb8f69d100919743e711ea9a47c89bdbd8c08cb302c18dfd6646"
    end

    on_intel do
      url "https://github.com/exein-io/analyzer-cli/releases/download/v0.2.2/analyzer-x86_64-apple-darwin.tar.gz"
      sha256 "2a696dd7c6a64ea20518e61fa645b7a58804b65557eb3d9a9c267d1029d51457"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/exein-io/analyzer-cli/releases/download/v0.2.2/analyzer-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5da315f2f2f890eee6eaba6b08750089973c216668d2c2acba37cc7543bb7531"
    end

    on_intel do
      url "https://github.com/exein-io/analyzer-cli/releases/download/v0.2.2/analyzer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53b2cbff646fa09d170f70f25cdad59322b9562832f67d2ea380acddb9832e0a"
    end
  end

  def install
    bin.install "analyzer"
  end

  test do
    assert_match "analyzer-cli", shell_output("#{bin}/analyzer --version")
  end
end
