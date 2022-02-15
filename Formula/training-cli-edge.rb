# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TrainingCliEdge < Formula
  desc "training-cli"
  homepage "https://github.com/ondrejsika/training-cli"
  version "0.1.0-dev-4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.1.0-dev-4/training-cli_v0.1.0-dev-4_darwin_arm64.tar.gz"
      sha256 "ba2fff91a11d884d12b7d71156b825ab252b344046bbe29d1c5184137d9fdbb0"

      def install
        bin.install "training-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.1.0-dev-4/training-cli_v0.1.0-dev-4_darwin_amd64.tar.gz"
      sha256 "73131b2c24991235ec33e6c60ccdae57055f72f1e66893ce9b84d081da3b3336"

      def install
        bin.install "training-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.1.0-dev-4/training-cli_v0.1.0-dev-4_linux_arm64.tar.gz"
      sha256 "fac3758117ce942efeecdcc41fa24b91df261c20fd38b4688bf7dd86e1894b56"

      def install
        bin.install "training-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.1.0-dev-4/training-cli_v0.1.0-dev-4_linux_amd64.tar.gz"
      sha256 "98e06842e4987f949ae8b15d90ca7dd7af953db873c8d799b41fd33c905dbfe4"

      def install
        bin.install "training-cli"
      end
    end
  end

  conflicts_with "training-cli"

  def caveats; <<~EOS
    How to use this binary: https://github.com/ondrejsika/training-cli
  EOS
  end

  test do
    system "#{bin}/training-cli version"
  end
end