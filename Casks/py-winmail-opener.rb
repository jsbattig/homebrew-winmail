cask "py-winmail-opener" do
  version "1.1.5"
  sha256 "69bc3543d6f97c9330c14d15e059a831abd6b286601d09e95b69264740ae46be"
  
  url "https://github.com/jsbattig/py-winmail-opener/releases/download/v#{version}/WinmailOpener-#{version}.dmg"
  name "WinmailOpener"
  desc "Extract attachments and email body from Winmail.dat files"
  homepage "https://github.com/jsbattig/py-winmail-opener"
  
  app "WinmailOpener-#{version}.app"
  
  binary "#{appdir}/WinmailOpener-#{version}.app/Contents/MacOS/winmail-opener", target: "winmail-opener"
  
  uninstall delete: "/usr/local/bin/winmail-opener"
  
  zap trash: [
    "~/Library/Logs/WinmailOpener_log.txt",
    "~/Library/Preferences/com.github.jsbattig.winmailopener.plist"
  ]
end
