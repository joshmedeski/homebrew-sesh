# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sesh < Formula
  desc "Smart terminal session manager"
  homepage "https://github.com/joshmedeski/sesh"
  version "2.0.2"
  license "MIT"

  depends_on "tmux"
  depends_on "zoxide"

  on_macos do
    on_intel do
      url "https://github.com/joshmedeski/sesh/releases/download/v2.0.2/sesh_Darwin_x86_64.tar.gz"
      sha256 "8fe4184c055e23ea35517a91fee0c4b8d761f9078c14678480241543357ddc56"

      def install
        bin.install "sesh"
      end
    end
    on_arm do
      url "https://github.com/joshmedeski/sesh/releases/download/v2.0.2/sesh_Darwin_arm64.tar.gz"
      sha256 "f586f783160246ea1ceaca057386919366ad3e450a87e748d4cfa070c5477ae3"

      def install
        bin.install "sesh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/joshmedeski/sesh/releases/download/v2.0.2/sesh_Linux_x86_64.tar.gz"
        sha256 "9094a504fb50e61bcd0edbe72cd7789a6850a169761a21e56dd29da4824ad135"

        def install
          bin.install "sesh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/joshmedeski/sesh/releases/download/v2.0.2/sesh_Linux_arm64.tar.gz"
        sha256 "7259f87082c57e8bad2b0ae797c37e0f1faecbbdfc1a2fde9946cf172dc1c127"

        def install
          bin.install "sesh"
        end
      end
    end
  end
end
