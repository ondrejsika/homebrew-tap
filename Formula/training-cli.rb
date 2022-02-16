# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TrainingCli < Formula
  desc "training-cli"
  homepage "https://github.com/ondrejsika/training-cli"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.2.0/training-cli_v0.2.0_darwin_arm64.tar.gz"
      sha256 "1bfa611b23bbd060ecb7c203a386f2bc9b4bae2f5ba0f9f4146dc727f46993ea"

      def install
        bin.install "training-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.2.0/training-cli_v0.2.0_darwin_amd64.tar.gz"
      sha256 "c75638e87eb16310d2e52e5709e0d4d4aed5b668a4496df507cc804110026cbe"

      def install
        bin.install "training-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.2.0/training-cli_v0.2.0_linux_arm64.tar.gz"
      sha256 "3072ed4afca84c80b632908606862732db7e96f5a4d609e0539e020945ba3f55"

      def install
        bin.install "training-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.2.0/training-cli_v0.2.0_linux_amd64.tar.gz"
      sha256 "9bcee7192072201af9f9f775630ececee8cc00ca39a64ee55573f66b30c36fa7"

      def install
        bin.install "training-cli"
      end
    end
  end

  conflicts_with "training-cli-edge"

  def caveats; <<~EOS
    How to use this binary: https://github.com/ondrejsika/training-cli
  EOS
  end

  test do
    system "#{bin}/training-cli version"
  end
end
