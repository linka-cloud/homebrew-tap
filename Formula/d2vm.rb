# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class D2vm < Formula
  desc "Build Virtual Machine Image from Dockerfile or Docker image"
  homepage "https://github.com/linka-cloud/d2vm"
  version "0.3.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linka-cloud/d2vm/releases/download/v0.3.0/d2vm_v0.3.0_darwin_arm64.tar.gz"
      sha256 "46082b82607d01d25955902415964fbec4325732c13617d50a63e214b29c2881"

      def install
        bin.install "d2vm"
        bash_completion.install "completions/d2vm.bash" => "d2vm"
        zsh_completion.install "completions/d2vm.zsh" => "_d2vm"
        fish_completion.install "completions/d2vm.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linka-cloud/d2vm/releases/download/v0.3.0/d2vm_v0.3.0_darwin_amd64.tar.gz"
      sha256 "9e9d608dd0618f5c14c99fb86cbab16a1b2ff2c23b87c591a9a5df0e14677e51"

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
      url "https://github.com/linka-cloud/d2vm/releases/download/v0.3.0/d2vm_v0.3.0_linux_arm64.tar.gz"
      sha256 "54adace5134ba858b68f422bbeb257f777e86d88cf68938647a58683e3cd9979"

      def install
        bin.install "d2vm"
        bash_completion.install "completions/d2vm.bash" => "d2vm"
        zsh_completion.install "completions/d2vm.zsh" => "_d2vm"
        fish_completion.install "completions/d2vm.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linka-cloud/d2vm/releases/download/v0.3.0/d2vm_v0.3.0_linux_amd64.tar.gz"
      sha256 "6892cf388c5a13beba8fd73a6b5c051f3ab83c64ba25f86bc2c018224192e9f1"

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
