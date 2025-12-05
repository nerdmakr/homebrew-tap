cask "cnotify" do
  version "0.1.0"
  sha256 "e29fa46e45a6d8ac68db1c3770cce57c2ef71e8754e94973a5f4b024946bee86"

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
