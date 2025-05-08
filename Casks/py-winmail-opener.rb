cask "py-winmail-opener" do
  version "1.1.8"
  sha256 "d6807b09c491fcf90f3ef6797f956f24590899d7b50185f0cb12dca3647b26c6"
  
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
