cask "py-winmail-opener" do
  version "1.1.14"
  sha256 "8d6fff492cbd1c1c4c7d27036c60ddec7f88acf78f17302f7713b52ff88f911f"
  
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
