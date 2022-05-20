# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MachComposer < Formula
  desc "MACH composer is a framework that you use to orchestrate andextend modern digital commerce & experience platforms, based on MACH technologies and cloud native services.."
  homepage "https://machcomposer.io/"
  version "2.1.2-rc3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/labd/mach-composer/releases/download/v2.1.2-rc3/mach-composer_2.1.2-rc3_darwin_arm64.tar.gz"
      sha256 "114a1dcc60d192224e4748039bdf88805b5a74f81ca5858eef2e31091eb8c4d3"

      def install
        bin.install "mach-composer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/labd/mach-composer/releases/download/v2.1.2-rc3/mach-composer_2.1.2-rc3_darwin_amd64.tar.gz"
      sha256 "a2263ab865c76d1518f047beab0f5bbe9db826d2b10a7d857eed9f6a7f9eb31b"

      def install
        bin.install "mach-composer"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/labd/mach-composer/releases/download/v2.1.2-rc3/mach-composer_2.1.2-rc3_linux_armv6.tar.gz"
      sha256 "58d1bf717cb4f95f07fff244ca3f7b70e5e51324535222f98081005f54f3516d"

      def install
        bin.install "mach-composer"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/labd/mach-composer/releases/download/v2.1.2-rc3/mach-composer_2.1.2-rc3_linux_arm64.tar.gz"
      sha256 "be1e0ee5c30abd3474daf23b878b26643eed0fae9ad7b63210f6a5d70e7e883e"

      def install
        bin.install "mach-composer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/labd/mach-composer/releases/download/v2.1.2-rc3/mach-composer_2.1.2-rc3_linux_amd64.tar.gz"
      sha256 "ebeacfb94c11eb3c5f4154bde31ab92101f69c4459675ef4ee41e1c8822a4f5a"

      def install
        bin.install "mach-composer"
      end
    end
  end

  depends_on "terraform"
  depends_on "git" => :optional
end
