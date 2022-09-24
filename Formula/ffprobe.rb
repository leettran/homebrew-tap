class Ffprobe < Formula
  desc "Play, record, convert, and stream audio and video"
  homepage "https://asiansfly.io/"
  url "https://evermeet.cx/ffmpeg/ffprobe-5.0.1.zip"
  sha256 "e6ea82cc35c5e7a4de45d63d9f73c9d300df2e86e2722d75d5b3d0a639cb3e84"
  license "AFL-3"


  def install
    bin.install "ffprobe"
  end

  test do
    mp4out = "test/video.mp4"
    system bin/"ffmpeg", "-filter_complex", "testsrc=rate=1:duration=1", mp4out 
    assert_predicate mp4out, :exist?
  end


end
