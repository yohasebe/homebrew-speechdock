cask "speechdock" do
  version "0.1.26"
  sha256 "49bdbbe682a1bc5cf1d409950e5b589037dd05f2be41fd3db2c173136d1f6b1b"

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
