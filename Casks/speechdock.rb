cask "speechdock" do
  version "0.1.32"
  sha256 "2b6217691a53408a529e08bc029db9250e1afad112fe410a38ab6023fd3b9265"

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
