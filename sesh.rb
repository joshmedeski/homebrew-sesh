# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sesh < Formula
  desc "Smart terminal session manager"
  homepage "https://github.com/joshmedeski/sesh"
  version "2.1.0"
  license "MIT"

  depends_on "tmux"
  depends_on "zoxide"

  on_macos do
    on_intel do
      url "https://github.com/joshmedeski/sesh/releases/download/v2.1.0/sesh_Darwin_x86_64.tar.gz"
      sha256 "a1850255d60de15b297ba759ada7778e6867723d621ecacaac47517da1052192"

      def install
        bin.install "sesh"
      end
    end
    on_arm do
      url "https://github.com/joshmedeski/sesh/releases/download/v2.1.0/sesh_Darwin_arm64.tar.gz"
      sha256 "01a2d728cd3a22adb691c22f079d6e1a562c07723deb0c428131c96b99ad4662"

      def install
        bin.install "sesh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/joshmedeski/sesh/releases/download/v2.1.0/sesh_Linux_x86_64.tar.gz"
        sha256 "b92ac356e62882851bc40a178a93f99043ad0767b38179cef4d6feb0e1e8aac6"

        def install
          bin.install "sesh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/joshmedeski/sesh/releases/download/v2.1.0/sesh_Linux_arm64.tar.gz"
        sha256 "0a4ebcf8a9a1bb65ece96187ac990a4dbdd48d324d7c5251ffe737b3e3f9d3b8"

        def install
          bin.install "sesh"
        end
      end
    end
  end
end
