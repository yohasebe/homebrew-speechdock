cask "speechdock" do
  version "0.1.36"
  sha256 "db3811510146ab583aa1bc09f5025a226dfd94df3ce3e89a5237c7676fa3e8f3"

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
