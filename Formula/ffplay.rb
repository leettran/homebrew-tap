class Ffplay < Formula
  desc "Play, record, convert, and stream audio and video"
  homepage "https://asiansfly.io/"
  url "https://evermeet.cx/ffmpeg/ffplay-5.0.1.zip"
  sha256 "d172e6ad38eccb730d3a818698ff85a8bf3b13e2e3ff680af8fda898ff7b1fe0"
  license "AFL-3"

  def install
    bin.install "ffplay"
  end

  test do
    mp4out = "test/video.mp4"
    system bin/"ffmpeg", "-filter_complex", "testsrc=rate=1:duration=1", mp4out 
    assert_predicate mp4out, :exist?
  end


end
