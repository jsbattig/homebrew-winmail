cask "py-winmail-opener" do
  version "1.1.13"
  sha256 "0c4022e4191100d225963f2c15660190a1daa7cc00d435acaf1bc5ce1da0e80f"
  
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
