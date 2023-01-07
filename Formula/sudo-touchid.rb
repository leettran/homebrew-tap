class SudoTouchid < Formula
  desc "TouchID support for sudo"
  homepage "https://github.com/artginzburg/sudo-touchid"
  url "https://github.com/artginzburg/sudo-touchid/releases/download/0.4/sudo-touchid.sh"
  head "https://github.com/artginzburg/sudo-touchid.git"
  sha256 "5929f7a7edab448142676ced6c579f3577f86d4035399d90cb2a66543f46f888"
  license "EPL-2.0"

  def install
    bin.install "sudo-touchid.sh" => "sudo-touchid"
  end

  plist_options :startup => true

  service do
    run [bin/"sudo-touchid"]
  end
end
