require "formula"

class Zvbi < Formula
  homepage 'http://zapping.sourceforge.net/'
  url "http://downloads.sourceforge.net/project/zapping/zvbi/0.2.35/zvbi-0.2.35.tar.bz2"
  sha256 "fc883c34111a487c4a783f91b1b2bb5610d8d8e58dcba80c7ab31e67e4765318"

  def install
    system "./configure",
           "--disable-dependency-tracking",
           "--with-x",
           "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end
