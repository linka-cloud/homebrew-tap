# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class D2vm < Formula
  desc "Build Virtual Machine Image from Dockerfile or Docker image"
  homepage "https://github.com/linka-cloud/d2vm"
  version "0.2.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linka-cloud/d2vm/releases/download/v0.2.0/d2vm_v0.2.0_darwin_arm64.tar.gz"
      sha256 "b275bf2e0990fa07df946c292fdebf0e0a937152f784cbc445ae40228fa6b802"

      def install
        bin.install "d2vm"
        bash_completion.install "completions/d2vm.bash" => "d2vm"
        zsh_completion.install "completions/d2vm.zsh" => "_d2vm"
        fish_completion.install "completions/d2vm.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linka-cloud/d2vm/releases/download/v0.2.0/d2vm_v0.2.0_darwin_amd64.tar.gz"
      sha256 "d2d12c6c2beaa6da1a8c1a4ef99dc354332c5f6dde2b057be1f0a4389fde6ec1"

      def install
        bin.install "d2vm"
        bash_completion.install "completions/d2vm.bash" => "d2vm"
        zsh_completion.install "completions/d2vm.zsh" => "_d2vm"
        fish_completion.install "completions/d2vm.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linka-cloud/d2vm/releases/download/v0.2.0/d2vm_v0.2.0_linux_arm64.tar.gz"
      sha256 "de7ef90973dd719451f455eed24c74fab19ca19b681afcc58d2236600b8e0939"

      def install
        bin.install "d2vm"
        bash_completion.install "completions/d2vm.bash" => "d2vm"
        zsh_completion.install "completions/d2vm.zsh" => "_d2vm"
        fish_completion.install "completions/d2vm.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linka-cloud/d2vm/releases/download/v0.2.0/d2vm_v0.2.0_linux_amd64.tar.gz"
      sha256 "cda75556c0b425fba36c237f669d7f5b7042692980b6900d3ba2367a21ff4f9c"

      def install
        bin.install "d2vm"
        bash_completion.install "completions/d2vm.bash" => "d2vm"
        zsh_completion.install "completions/d2vm.zsh" => "_d2vm"
        fish_completion.install "completions/d2vm.fish"
      end
    end
  end

  depends_on "go" => :optional
  depends_on "git"

  test do
    system "#{bin}/d2vm --version"
  end
end
