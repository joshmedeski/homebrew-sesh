# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sesh < Formula
  desc "Smart terminal session manager"
  homepage "https://github.com/joshmedeski/sesh"
  version "0.2.1"
  license "MIT"

  depends_on "tmux"
  depends_on "zoxide"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joshmedeski/sesh/releases/download/v0.2.1/sesh_Darwin_arm64.tar.gz"
      sha256 "4d4a1f1f5166e849bd635b6bb11a7f68fe0d16b568fa3a7e8ebe0049073902c4"

      def install
        bin.install "sesh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/joshmedeski/sesh/releases/download/v0.2.1/sesh_Darwin_x86_64.tar.gz"
      sha256 "d095814b41796abda182eed3773a579e0ae70418931cfeb42e705741b2d146ba"

      def install
        bin.install "sesh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/joshmedeski/sesh/releases/download/v0.2.1/sesh_Linux_arm64.tar.gz"
      sha256 "4296bf3088625dc17dfe4e905d4cae313a40844a345adb35583522e441e0818b"

      def install
        bin.install "sesh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/joshmedeski/sesh/releases/download/v0.2.1/sesh_Linux_x86_64.tar.gz"
      sha256 "d514054e047700aa8bf54917b5d0d42b29685093363d4acadc85b1bb88108923"

      def install
        bin.install "sesh"
      end
    end
  end
end
