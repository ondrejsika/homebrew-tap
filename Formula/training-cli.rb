# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TrainingCli < Formula
  desc "training-cli"
  homepage "https://github.com/ondrejsika/training-cli"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.4.2/training-cli_v0.4.2_darwin_arm64.tar.gz"
      sha256 "e9879763b12bbb24ccb35c37d60edbce62023e2b36f084200b82bc60f1425642"

      def install
        bin.install "training-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.4.2/training-cli_v0.4.2_darwin_amd64.tar.gz"
      sha256 "40278a1ece95822a94e7412d9af2b523cc9194abb567e4ca8580571e498c9a6f"

      def install
        bin.install "training-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.4.2/training-cli_v0.4.2_linux_arm64.tar.gz"
      sha256 "1e1596ceea00e2ec1a78bdaaa09f4f9cffaa063fde1ef58eb3c8b3fb8e526407"

      def install
        bin.install "training-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.4.2/training-cli_v0.4.2_linux_amd64.tar.gz"
      sha256 "908f0cc0c44ac8f18e78d3e002471fb90df4213f0a5693828a9d5a3c9034a47b"

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
