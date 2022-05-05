require "formula"

class OsxDictionary < Formula
  desc "OSX CLI Dictionary"
  homepage "https://github.com/leettran/osxdict"

  head "https://github.com/leettran/osxdict.git", :branch => "master"

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end
end