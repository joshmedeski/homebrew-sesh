# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sesh < Formula
  desc "Smart terminal session manager"
  homepage "https://github.com/joshmedeski/sesh"
  version "1.2.0"
  license "MIT"

  depends_on "tmux"
  depends_on "zoxide"

  on_macos do
    on_intel do
      url "https://github.com/joshmedeski/sesh/releases/download/v1.2.0/sesh_Darwin_x86_64.tar.gz"
      sha256 "4d32382e0fecff9d81aa6b5d26037d62802c35d9a3ed649563a26660fc90ea02"

      def install
        bin.install "sesh"
      end
    end
    on_arm do
      url "https://github.com/joshmedeski/sesh/releases/download/v1.2.0/sesh_Darwin_arm64.tar.gz"
      sha256 "f569bc4b973d1228aaac52950a6746d3628d9310dd11db62f7a1fc4e90f17d17"

      def install
        bin.install "sesh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/joshmedeski/sesh/releases/download/v1.2.0/sesh_Linux_x86_64.tar.gz"
        sha256 "2da9b5da772269656b061944b84c3a422230979101fa4b12a51c171f65d5f41e"

        def install
          bin.install "sesh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/joshmedeski/sesh/releases/download/v1.2.0/sesh_Linux_arm64.tar.gz"
        sha256 "7146bee74af5e682c306a4d296bdb0d0ad47ca5786cee314c34d66f1def215fe"

        def install
          bin.install "sesh"
        end
      end
    end
  end
end
