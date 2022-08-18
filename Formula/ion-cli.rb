# Format documentation:
# * https://docs.brew.sh/Formula-Cookbook
# * https://rubydoc.brew.sh/Formula
class IonCli < Formula
  desc "Command line tools for working with the Ion data format."
  homepage "https://github.com/amzn/ion-cli"
  url "https://github.com/amzn/ion-cli/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "c45eb01ca5ab615edd64574d7db9b9beec086b2fd9e7b321754389028fba7e2d"
  version "0.4.1"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "ion"
    bin.install "target/release/ion"
  end
end
