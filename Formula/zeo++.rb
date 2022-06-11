class Zeoxx < Formula
  desc "Analysis of crystalline porous materials"
  homepage "http://zeoplusplus.org/"
  url "https://code.lbl.gov/svn/voro/trunk", :revision => "517", :using => :svn
  version "0.3"

  depends_on "voro++"

  def install
    cd "zeo" do
      system "make"
      bin.install "network"
    end
  end

  test do
  end
end
