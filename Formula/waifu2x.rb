# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Waifu2x < Formula
  desc "Waifu2x macOS Port"
  homepage "https://github.com/imxieyi/waifu2x-mac"
  url "https://github.com/imxieyi/waifu2x-mac/releases/download/v0.0.4/waifu2x-mac-cli.zip"
  version "0.0.4"
  sha256 "5254566897f8a939ad9421a5070a923d3515ca2fcbecd61e903955b2f7eceefb"

  def install
    system "mkdir", "-p", "#{prefix}/bin"
    system "mkdir", "-p", "#{prefix}/Frameworks"
    system "cp", "waifu2x", "#{prefix}/bin/waifu2x"
    system "cp", "-r", "waifu2x_mac.framework", "#{prefix}/Frameworks/waifu2x_mac.framework"
  end

  test do
    system "waifu2x"
  end
end
