cask "speechdock" do
  version "0.1.28"
  sha256 "26ed77bee7e208319ae1b4bf86422bd0549866582e82588e7fab8af44683127f"

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
