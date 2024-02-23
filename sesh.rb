# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sesh < Formula
  desc "Smart terminal session manager"
  homepage "https://github.com/joshmedeski/sesh"
  version "0.13.0"
  license "MIT"

  depends_on "tmux"
  depends_on "zoxide"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joshmedeski/sesh/releases/download/v0.13.0/sesh_Darwin_arm64.tar.gz"
      sha256 "9c837904dbc777e21a8a3ab52be62c5e6dcfe8eb90844f8a1d001a4daa10384b"

      def install
        bin.install "sesh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/joshmedeski/sesh/releases/download/v0.13.0/sesh_Darwin_x86_64.tar.gz"
      sha256 "d0be5bda5cb8bfca3b747be8107771d1e729dc734e51dc1c2907b364f02fb330"

      def install
        bin.install "sesh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/joshmedeski/sesh/releases/download/v0.13.0/sesh_Linux_arm64.tar.gz"
      sha256 "3c060ad930c22ac9f7ae5c13658d0f21d618531499576f0ffc1bab1886d11fb0"

      def install
        bin.install "sesh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/joshmedeski/sesh/releases/download/v0.13.0/sesh_Linux_x86_64.tar.gz"
      sha256 "617e8f03b34f3569339ba60ff6909b2760a59561873b5cdcfb2c64e466e57972"

      def install
        bin.install "sesh"
      end
    end
  end
end
