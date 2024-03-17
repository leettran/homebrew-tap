cask "vlc-webplugin" do
  version "3.0.4"
  sha256 "016aa490a7d924d83f07f46f8f09b74848baa3ca344ef2b02f0e30cb30436fdd"

  url "https://mirror.fcix.net/videolan-ftp/vlc/#{version}/macosx/VLC-webplugin-#{version}.dmg"
  name "VLC Web Plugin for OSX"
  desc "Web browser plugin"
  homepage "https://wiki.videolan.org/Documentation:WebPlugin/"

  internet_plugin "VLC Plugin.plugin"
end