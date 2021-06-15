# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FrontasticCliPre < Formula
  desc ""
  homepage "https://frontastic.cloud"
  version "frontastic-cli-1.3.1-pre"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FrontasticGmbH/frontastic-cli-pre/releases/download/frontastic-cli-1.3.1-pre/frontastic-cli-pre_1.3.1-pre_darwin_amd64.tar.gz"
      sha256 "1f14157e330f2c271c3dbeb701226629fe8f7e860c9683a80abc43613ea4f2a7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/FrontasticGmbH/frontastic-cli-pre/releases/download/frontastic-cli-1.3.1-pre/frontastic-cli-pre_1.3.1-pre_darwin_arm64.tar.gz"
      sha256 "12d4e42d8b29dfc2e792f5b4a6e79ac0851c07c180b99aafa8550dd13c65d665"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FrontasticGmbH/frontastic-cli-pre/releases/download/frontastic-cli-1.3.1-pre/frontastic-cli-pre_1.3.1-pre_linux_amd64.tar.gz"
      sha256 "ba5c90802265336749e809db166794289ee03ec293259d75bc670521b6ab7988"
    end
  end

  conflicts_with "frontastic-cli"

  def install
    bin.install "frontastic"
    prefix.install Dir["*"]
  end
end
