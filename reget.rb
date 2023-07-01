# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reget < Formula
  desc "Download a specific or latest release/tag from github based on the API"
  homepage "https://github.com/januznl/reget"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Januznl/reget/releases/download/v0.1.1/reget_Darwin_arm64.tar.gz"
      sha256 "1447699c699bf4a10ca867114bc61bdc80500c51d5a72371df1a5878c85a8fcf"

      def install
        bin.install "reget"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Januznl/reget/releases/download/v0.1.1/reget_Darwin_x86_64.tar.gz"
      sha256 "928179ba32d5e48193b3804841541e6a27eb3f3df9cdf0ae409a15141a400075"

      def install
        bin.install "reget"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Januznl/reget/releases/download/v0.1.1/reget_Linux_armv6.tar.gz"
      sha256 "b244f7bf2049c066e500e9e484e240cf1065796ce1ee5a8af66785dad71a53fc"

      def install
        bin.install "reget"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Januznl/reget/releases/download/v0.1.1/reget_Linux_x86_64.tar.gz"
      sha256 "86536ab448fca237caf300caff6420d5a8d3501f2b8ac524783e3c1c72df957d"

      def install
        bin.install "reget"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Januznl/reget/releases/download/v0.1.1/reget_Linux_arm64.tar.gz"
      sha256 "1ad4e95835a540d70eba340f04b68bf3ceaa5aa037c0eacb90e0291c05683748"

      def install
        bin.install "reget"
      end
    end
  end

  test do
    system "#{bin}/reget -v"
  end
end
