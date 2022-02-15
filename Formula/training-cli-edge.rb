# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TrainingCliEdge < Formula
  desc "training-cli"
  homepage "https://github.com/ondrejsika/training-cli"
  version "0.1.0-dev-2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.1.0-dev-2/training-cli_v0.1.0-dev-2_darwin_arm64.tar.gz"
      sha256 "716466ede94cca7eb186b7207e0239bbf25ee0d803e7874d012bad85454d68b2"

      def install
        bin.install "training-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.1.0-dev-2/training-cli_v0.1.0-dev-2_darwin_amd64.tar.gz"
      sha256 "91db04840fd1e8d674d1bec5d1b791e13196cdc05ff17579aab09626d6e75b7a"

      def install
        bin.install "training-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.1.0-dev-2/training-cli_v0.1.0-dev-2_linux_arm64.tar.gz"
      sha256 "cc99440eecbf4bb247175f32101e0661cb9c94197ae39d02a560e9c7f665234e"

      def install
        bin.install "training-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ondrejsika/training-cli/releases/download/v0.1.0-dev-2/training-cli_v0.1.0-dev-2_linux_amd64.tar.gz"
      sha256 "592718e9068ec05f096eb38f0ddbece3f7ec6b822d4c07eb90302f304ccfcf54"

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
