# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sesh < Formula
  desc "Smart terminal session manager"
  homepage "https://github.com/joshmedeski/sesh"
  version "0.1.12"
  license "MIT"

  depends_on "tmux"
  depends_on "zoxide"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joshmedeski/sesh/releases/download/v0.1.12/sesh_Darwin_arm64.tar.gz"
      sha256 "2b9b76ac37d89ba36a1a7c295b525d5625874e93fbb86d317084ae1772ea4cde"

      def install
        bin.install "sesh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/joshmedeski/sesh/releases/download/v0.1.12/sesh_Darwin_x86_64.tar.gz"
      sha256 "e612e592e51875e8476201061aeb47406882a18011f403fc506146f5c0ac0dde"

      def install
        bin.install "sesh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/joshmedeski/sesh/releases/download/v0.1.12/sesh_Linux_arm64.tar.gz"
      sha256 "435b068ecdc46a416587d5a642f09ada67462250520bafe4a812c16b4af97a93"

      def install
        bin.install "sesh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/joshmedeski/sesh/releases/download/v0.1.12/sesh_Linux_x86_64.tar.gz"
      sha256 "c127af45fe556f59d4189b090b8e2e81e1095526a201c7e2ebe85df6adae03d9"

      def install
        bin.install "sesh"
      end
    end
  end
end
