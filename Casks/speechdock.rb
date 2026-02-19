cask "speechdock" do
  version "0.1.28"
  sha256 "41b7b3115535a9f1b43441b4d3fa4011642574b1e439cbbcfb1403b9183aea8a"

  url "https://github.com/yohasebe/speechdock/releases/download/v#{version}/SpeechDock-#{version}.dmg"
  name "SpeechDock"
  desc "Menu bar STT/TTS app for macOS with multiple provider support"
  homepage "https://github.com/yohasebe/speechdock"

  depends_on macos: ">= :sonoma"

  app "SpeechDock.app"

  zap trash: [
    "~/Library/Preferences/com.speechdock.app.plist",
    "~/Library/Application Support/SpeechDock",
  ]
end
