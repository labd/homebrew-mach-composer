# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MachComposer < Formula
  desc "MACH composer is a framework that you use to orchestrate andextend modern digital commerce & experience platforms, based on MACH technologies and cloud native services.."
  homepage "https://machcomposer.io/"
  version "0.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/labd/mach-composer-go/releases/download/v0.0.7/mach-composer_0.0.7_darwin_amd64.tar.gz"
      sha256 "c30544a3fc6a8bddd0e7424b139a7ca1a85417f57ad2787643e301d8336cd566"

      def install
        bin.install "mach-composer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/labd/mach-composer-go/releases/download/v0.0.7/mach-composer_0.0.7_darwin_arm64.tar.gz"
      sha256 "5f876e9aa41cabf9eb859b90e58506ec6184a4c26bf0d6127531a7b71e50f25e"

      def install
        bin.install "mach-composer"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/labd/mach-composer-go/releases/download/v0.0.7/mach-composer_0.0.7_linux_armv6.tar.gz"
      sha256 "6d8ddb1313b02fa6add7794876d1034af77be597b0de2e90dbf258026dc3fd91"

      def install
        bin.install "mach-composer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/labd/mach-composer-go/releases/download/v0.0.7/mach-composer_0.0.7_linux_amd64.tar.gz"
      sha256 "7497fd4ab16f40fc1f2f359d11752b44c82dbd038c57937859eb58b780a7a6af"

      def install
        bin.install "mach-composer"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/labd/mach-composer-go/releases/download/v0.0.7/mach-composer_0.0.7_linux_arm64.tar.gz"
      sha256 "43aa30ea073699ef42d881c95f0556b7f50096ea87f915ec4840e2e8d29c8d1b"

      def install
        bin.install "mach-composer"
      end
    end
  end

  depends_on "terraform"
  depends_on "git" => :optional
end
