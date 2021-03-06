# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mock < Formula
  desc " mock is a simple, cross-platform, cli app to simulate HTTP-based APIs."
  homepage "https://github.com/bschaatsbergen/mock"
  version "0.1.0"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bschaatsbergen/mock/releases/download/v0.1.0/mock_0.1.0_darwin_amd64.tar.gz"
      sha256 "0c6f5758d59889e0bfaea716945b6f3a6cca35f140bf06e895abfd8fb82b64b3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bschaatsbergen/mock/releases/download/v0.1.0/mock_0.1.0_linux_amd64.tar.gz"
      sha256 "ea5b5e44825962345f1ff420ca2532474a5a15b08cd24a65990064bae46ef158"
    end
  end

  def install
    bin.install "mock"
  end

  test do
    system "#{bin}/mock -v"
  end
end
