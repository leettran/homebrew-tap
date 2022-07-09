class Ffmpeg < Formula
  desc "Play, record, convert, and stream audio and video"
  homepage "https://asiansfly.io/"
  url "https://evermeet.cx/ffmpeg/ffmpeg-5.0.1.zip"
  sha256 "6ba850f5d7a8ff1c33c7df99a1ec37687bf33b7b7c8135918ce994fc82f9c46c"
  license "AFL-3"

  resource "Ffprobe" do
    url "https://evermeet.cx/ffmpeg/ffprobe-5.0.1.zip"
    sha256 "e6ea82cc35c5e7a4de45d63d9f73c9d300df2e86e2722d75d5b3d0a639cb3e84"
  end

  resource "Ffplay" do
    url "https://evermeet.cx/ffmpeg/ffplay-5.0.1.zip"
    sha256 "d172e6ad38eccb730d3a818698ff85a8bf3b13e2e3ff680af8fda898ff7b1fe0"
  end

  resource "Ffserver" do
    url "https://evermeet.cx/ffmpeg/ffserver-3.4.2.zip"
    sha256 "52f2e7045a84dfd34af08319459cdfd17e682b9909cfe9f2178414c1cbc02a12"
  end

  def install
    system "unzip" "ffmpeg-5.0.1.zip"
    system "unzip" "ffprobe-5.0.1.zip"
    system "unzip" "ffplay-5.0.1.zip"
    system "unzip" "ffserver-5.0.1.zip"

    bin.install "ffmpeg", "ffprobe", "ffplay", "ffserver"
  end

  test do
    mp4out = "test/video.mp4"
    system bin/"ffmpeg", "-filter_complex", "testsrc=rate=1:duration=1", mp4out 
    assert_predicate mp4out, :exist?
  end


end
