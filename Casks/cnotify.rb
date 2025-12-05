cask "cnotify" do
  version "0.1.0"
  sha256 "a5f1bc58fc0c053663931c2e7b144fff59d1fe7aa90ecac46c8cf48b90a4ef0e"

  url "https://github.com/nerdmakr/claude-notify/releases/download/v#{version}/CNotify.zip"
  name "CNotify"
  desc "macOS notification app for Claude Code completion alerts"
  homepage "https://github.com/nerdmakr/claude-notify"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CNotify.app"

  zap trash: [
    "~/Library/Application Support/CNotify",
    "~/Library/Preferences/com.cnotify.app.plist",
  ]
end
