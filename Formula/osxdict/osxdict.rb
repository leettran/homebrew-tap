require 'formula'

class OsxDict < Formula
  homepage 'https://github.com/leettran/osxdict#readme'
  head 'https://github.com/leettran/osxdict.git'
  url 'https://github.com/leettran/osxdict/archive/refs/tags/v1.0.0.tar.gz'
  desc 'Command-line interface to Dictionary.app on OSX'
  sha256 "346834333b3b24b3b058f6b3ee12054de9ed552c93a6532f12c96b9f2543ed15"
  license "Unlicense"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "osxdict" 
  end

end
