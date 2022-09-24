class Ffserver < Formula
  desc "Play, record, convert, and stream audio and video"
  homepage "https://asiansfly.io/"
  url "https://evermeet.cx/ffmpeg/ffserver-3.4.2.zip"
  sha256 "52f2e7045a84dfd34af08319459cdfd17e682b9909cfe9f2178414c1cbc02a12"
  license "AFL-3"

  def install
    bin.install "ffserver"
  end

  test do
    mp4out = "test/video.mp4"
    system bin/"ffmpeg", "-filter_complex", "testsrc=rate=1:duration=1", mp4out 
    assert_predicate mp4out, :exist?
  end


end
