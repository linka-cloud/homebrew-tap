# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lkar < Formula
  desc "Distribute your artifacts to your end users without any additional administration or maintenance costs."
  homepage "https://github.com/linka-cloud/artifact-registry"
  version "0.0.0"
  license "Apache 2.0 and MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linka-cloud/artifact-registry/releases/download/v0.0.0/lkar_Darwin_aarch64.tar.gz"
      sha256 "4f5fc22ef1cf4bfa1e53be65c4e28ce63dc255532d17b9985e2d7a436570b0e4"

      def install
        bin.install "lkar"
        bash_completion.install "completions/lkar.bash" => "lkar"
        zsh_completion.install "completions/lkar.zsh" => "_lkar"
        fish_completion.install "completions/lkar.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linka-cloud/artifact-registry/releases/download/v0.0.0/lkar_Darwin_x86_64.tar.gz"
      sha256 "1c994a01e58d9432671abc4a2aa74082f9cf45a642a08cf886d67d6ed89f31f7"

      def install
        bin.install "lkar"
        bash_completion.install "completions/lkar.bash" => "lkar"
        zsh_completion.install "completions/lkar.zsh" => "_lkar"
        fish_completion.install "completions/lkar.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linka-cloud/artifact-registry/releases/download/v0.0.0/lkar_Linux_aarch64.tar.gz"
      sha256 "3914704c3a287cd92c28fd4da54204d273d61bdc6b77ac9577f055b1242850c1"

      def install
        bin.install "lkar"
        bash_completion.install "completions/lkar.bash" => "lkar"
        zsh_completion.install "completions/lkar.zsh" => "_lkar"
        fish_completion.install "completions/lkar.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linka-cloud/artifact-registry/releases/download/v0.0.0/lkar_Linux_x86_64.tar.gz"
      sha256 "1dee736b3b84f266e2d0645196d30b42ecff4a8d3185b35f783ca8d201fdaad9"

      def install
        bin.install "lkar"
        bash_completion.install "completions/lkar.bash" => "lkar"
        zsh_completion.install "completions/lkar.zsh" => "_lkar"
        fish_completion.install "completions/lkar.fish"
      end
    end
  end

  test do
    system "#{bin}/lkar --version"
  end
end
