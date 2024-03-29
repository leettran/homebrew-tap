class Ffmpeg < Formula
  desc "Play, record, convert, and stream audio and video"
  homepage "https://asiansfly.io/"
  url "https://evermeet.cx/ffmpeg/ffmpeg-5.0.1.zip"
  sha256 "6ba850f5d7a8ff1c33c7df99a1ec37687bf33b7b7c8135918ce994fc82f9c46c"
  license "AFL-3"

  def install
    bin.install "ffmpeg"
  end

  test do
    mp4out = "test/video.mp4"
    system bin/"ffmpeg", "-filter_complex", "testsrc=rate=1:duration=1", mp4out 
    assert_predicate mp4out, :exist?
  end


end
