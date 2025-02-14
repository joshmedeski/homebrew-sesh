# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sesh < Formula
  desc "Smart terminal session manager"
  homepage "https://github.com/joshmedeski/sesh"
  version "2.12.0"
  license "MIT"

  depends_on "tmux"
  depends_on "zoxide"

  on_macos do
    on_intel do
      url "https://github.com/joshmedeski/sesh/releases/download/v2.12.0/sesh_Darwin_x86_64.tar.gz"
      sha256 "86103c3bfc9737ae7c429a39e4a9886f8b1d9e07f74ee7c23cc4dc557fb3311c"

      def install
        bin.install "sesh"
      end
    end
    on_arm do
      url "https://github.com/joshmedeski/sesh/releases/download/v2.12.0/sesh_Darwin_arm64.tar.gz"
      sha256 "1daec563bc4233562ea61c3ae6ade03ecdcf2c40ef3deab0720407af54b55f8d"

      def install
        bin.install "sesh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/joshmedeski/sesh/releases/download/v2.12.0/sesh_Linux_x86_64.tar.gz"
        sha256 "5b85351e3c07165d2720c566515605245c9db0bf9f4e68307f2dc25117bd3b51"

        def install
          bin.install "sesh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/joshmedeski/sesh/releases/download/v2.12.0/sesh_Linux_arm64.tar.gz"
        sha256 "06e4fddb47cd9c08239e9e9250ebbcd2996ac2d35c070d5dabf39a7c3344bdd7"

        def install
          bin.install "sesh"
        end
      end
    end
  end
end
