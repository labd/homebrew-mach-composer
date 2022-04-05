# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MachComposer < Formula
  desc "MACH composer is a framework that you use to orchestrate andextend modern digital commerce & experience platforms, based on MACH technologies and cloud native services.."
  homepage "https://machcomposer.io/"
  version "2.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/labd/mach-composer/releases/download/v2.0.3/mach-composer_2.0.3_darwin_amd64.tar.gz"
      sha256 "fd38d96a12f2293d92b19035115077f957285ce87c333f157facb4ac74f6b72a"

      def install
        bin.install "mach-composer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/labd/mach-composer/releases/download/v2.0.3/mach-composer_2.0.3_darwin_arm64.tar.gz"
      sha256 "26b82fc6fdcf65ab4623deb550dcbd26d4fae89a842f99fcd34b68f748713592"

      def install
        bin.install "mach-composer"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/labd/mach-composer/releases/download/v2.0.3/mach-composer_2.0.3_linux_amd64.tar.gz"
      sha256 "0dd735c96af9574823114d00df846c5b3583f50a8a57acc9d27f68aa8d6bcdeb"

      def install
        bin.install "mach-composer"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/labd/mach-composer/releases/download/v2.0.3/mach-composer_2.0.3_linux_armv6.tar.gz"
      sha256 "8a17bdb2021a0a5d6703ced7d2607b939dd8ebf708233b607b78422322164c44"

      def install
        bin.install "mach-composer"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/labd/mach-composer/releases/download/v2.0.3/mach-composer_2.0.3_linux_arm64.tar.gz"
      sha256 "b3cc30a57d2144fb74ea925c314eb38c8403a974ab5c4b154cd1e91fa14f85ea"

      def install
        bin.install "mach-composer"
      end
    end
  end

  depends_on "terraform"
  depends_on "git" => :optional
end
