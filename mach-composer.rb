# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MachComposer < Formula
  desc "MACH composer is a framework that you use to orchestrate andextend modern digital commerce & experience platforms, based on MACH technologies and cloud native services.."
  homepage "https://machcomposer.io/"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/labd/mach-composer-go/releases/download/v0.1.1/mach-composer_0.1.1_darwin_amd64.tar.gz"
      sha256 "7483ac55b60dc181c6afcdd0a5e31f2f6433e4a0efc33fc3da93b9d09e85ad39"

      def install
        bin.install "mach-composer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/labd/mach-composer-go/releases/download/v0.1.1/mach-composer_0.1.1_darwin_arm64.tar.gz"
      sha256 "7bde0ed62cc5fcd8f61ef77aede0e1fd31ee8168fc840bc381cddf030781a49a"

      def install
        bin.install "mach-composer"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/labd/mach-composer-go/releases/download/v0.1.1/mach-composer_0.1.1_linux_arm64.tar.gz"
      sha256 "0fcdc0e95014ad84467095cb74c57c344ef4fdb66f4c2c7374a9822a1576a0d1"

      def install
        bin.install "mach-composer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/labd/mach-composer-go/releases/download/v0.1.1/mach-composer_0.1.1_linux_amd64.tar.gz"
      sha256 "5a47d7ad483e7d339e1c92289d4f595ff5280e5af9676cab0696879b08ffff4a"

      def install
        bin.install "mach-composer"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/labd/mach-composer-go/releases/download/v0.1.1/mach-composer_0.1.1_linux_armv6.tar.gz"
      sha256 "d396ce4920515828aebe3ab0bca7d9622aae2b269f6c1c40cc363db4539b46fe"

      def install
        bin.install "mach-composer"
      end
    end
  end

  depends_on "terraform"
  depends_on "git" => :optional
end
