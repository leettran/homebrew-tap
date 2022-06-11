class macdict < Formula
  desc "Simple command line interface dictionary for MacOS"
  homepage "https://pypi.org/project/macdict/"
  head "https://github.com/tonyseek/macdict.git"
  url "https://files.pythonhosted.org/packages/25/4a/a3b8b1384fa33de5a95de365ea401f37d78d8e62e4e85f69c12a08d1322c/macdict-0.1.4.tar.gz"
  sha256 "0355108dc0722218cac99b0200f8f796b2a8d8f3f2383c17d2f32b6a1163604b"
  license "Unlicensed"

  depends_on "pyobjc" => :python
  depends_on "pyobjc-framework-DictionaryServices => [:python, DictionaryServices]
  depends_on "pkg-config" => :build

  livecheck do
    url :stable
  end

  def install
    system "make"
    bin.install "macdict"
  end

  test do
    system "#{bin}/macdict", "-v"
  end
end
