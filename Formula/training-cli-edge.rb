# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TrainingCliEdge < Formula
  desc "training-cli"
  homepage "https://github.com/ondrejsika/training-cli"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.4.0/training-cli_v0.4.0_darwin_arm64.tar.gz"
      sha256 "326c18918dbb5505c323c687a9e7a9beebb02e33edf1054f5e724f03bea58685"

      def install
        bin.install "training-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.4.0/training-cli_v0.4.0_darwin_amd64.tar.gz"
      sha256 "9b5af41120ec7911bd73471f9610f193af8eb1477db095b2bc2cbdee0a0d4519"

      def install
        bin.install "training-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.4.0/training-cli_v0.4.0_linux_arm64.tar.gz"
      sha256 "d77bd131202801bdc6502108c651dc4f5b67777ca8735fe9809cf24407ddad51"

      def install
        bin.install "training-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.4.0/training-cli_v0.4.0_linux_amd64.tar.gz"
      sha256 "b2caaf60dd67396274f884be92f8c023d48b564032de396f37361b5609eb481b"

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
