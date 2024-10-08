# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sesh < Formula
  desc "Smart terminal session manager"
  homepage "https://github.com/joshmedeski/sesh"
  version "2.5.0"
  license "MIT"

  depends_on "tmux"
  depends_on "zoxide"

  on_macos do
    on_intel do
      url "https://github.com/joshmedeski/sesh/releases/download/v2.5.0/sesh_Darwin_x86_64.tar.gz"
      sha256 "01f37459097636b354cd6ed574af4f040666752c0887e294532c873b9e10b250"

      def install
        bin.install "sesh"
      end
    end
    on_arm do
      url "https://github.com/joshmedeski/sesh/releases/download/v2.5.0/sesh_Darwin_arm64.tar.gz"
      sha256 "7b8c558823c7abf8719302b91ca5ee8af9968dc5287966957f7ea8f516f57cb9"

      def install
        bin.install "sesh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/joshmedeski/sesh/releases/download/v2.5.0/sesh_Linux_x86_64.tar.gz"
        sha256 "9228f1c284edc098cefd154b3098195a252f56360353d8d3510d34db08043805"

        def install
          bin.install "sesh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/joshmedeski/sesh/releases/download/v2.5.0/sesh_Linux_arm64.tar.gz"
        sha256 "73f5b93423a4e7ec475807a8ed8e92ead5c0099cbc930d72eef2445b4e1cde8d"

        def install
          bin.install "sesh"
        end
      end
    end
  end
end
