# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FrontasticCli < Formula
  desc ""
  homepage "https://frontastic.cloud"
  version "frontastic-cli-1.4.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FrontasticGmbH/frontastic-cli/releases/download/frontastic-cli-1.4.0/frontastic-cli_1.4.0_darwin_amd64.tar.gz"
      sha256 "6af93ad27bb5ffd95b93f3b0adfbc43c9e4bd5c993ee20e8591671c464f5cc76"
    end
    if Hardware::CPU.arm?
      url "https://github.com/FrontasticGmbH/frontastic-cli/releases/download/frontastic-cli-1.4.0/frontastic-cli_1.4.0_darwin_arm64.tar.gz"
      sha256 "6d90ced1a44b6f997ee033900f4fe826c70f514afc65cfbd127410a472784c2a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FrontasticGmbH/frontastic-cli/releases/download/frontastic-cli-1.4.0/frontastic-cli_1.4.0_linux_amd64.tar.gz"
      sha256 "64898456b727acec6427ec360d5cbfb90b081bcf6414053f878aee9ccd5b3137"
    end
  end

  conflicts_with "frontastic-cli-pre"

  def install
    bin.install "frontastic"
    prefix.install Dir["*"]
    ohai "\n\nRun 'frontastic init' to get started.\n"
  end
end
