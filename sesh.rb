# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sesh < Formula
  desc "Smart terminal session manager"
  homepage "https://github.com/joshmedeski/sesh"
  version "1.0.1"
  license "MIT"

  depends_on "tmux"
  depends_on "zoxide"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/joshmedeski/sesh/releases/download/v1.0.1/sesh_Darwin_x86_64.tar.gz"
      sha256 "849d761c73084ecb06646092dcfbf29ad80377e07bf86e0c734897f776e34370"

      def install
        bin.install "sesh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/joshmedeski/sesh/releases/download/v1.0.1/sesh_Darwin_arm64.tar.gz"
      sha256 "7ee7c3b310c78d28d3e4682e02e50cd2c9b556dcde992adc5527c8afddcea286"

      def install
        bin.install "sesh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/joshmedeski/sesh/releases/download/v1.0.1/sesh_Linux_arm64.tar.gz"
      sha256 "3fb1464fe5b0611cbaf3b04f4f6e5705547f025f4fb4c4e56daddf04be51d644"

      def install
        bin.install "sesh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/joshmedeski/sesh/releases/download/v1.0.1/sesh_Linux_x86_64.tar.gz"
      sha256 "97fab4109ad95c3a277f05b595998717918f30d87b2bae45847dcc088feb29b5"

      def install
        bin.install "sesh"
      end
    end
  end
end
