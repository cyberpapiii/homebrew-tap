cask "imessage-max" do
  version "2.0.0"
  sha256 "a7c711779d131d88f52eb3b1a8e7069db9e7bb275542feb4c2329ac749e0d301"

  url "https://github.com/cyberpapiii/imessage-max/releases/download/v#{version}/iMessage-Max-#{version}.dmg"
  name "iMessage Max"
  desc "MCP server that lets AI assistants read, search and send iMessages"
  homepage "https://github.com/cyberpapiii/imessage-max"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "iMessage Max.app"
  binary "#{appdir}/iMessage Max.app/Contents/MacOS/imessage-max"

  uninstall quit:   "com.cyberpapiii.imessage-max.menubar",
            signal: ["TERM", "com.cyberpapiii.imessage-max.helper"]

  zap launchctl: "com.cyberpapiii.imessage-max.helper",
      trash:     [
        "~/Library/Application Support/iMessage Max",
        "~/Library/Caches/com.cyberpapiii.imessage-max.menubar",
        "~/Library/HTTPStorages/com.cyberpapiii.imessage-max.menubar",
        "~/Library/Logs/iMessage Max",
        "~/Library/Logs/imessage-max.stderr.log",
        "~/Library/Logs/imessage-max.stdout.log",
        "~/Library/Preferences/com.cyberpapiii.imessage-max.menubar.plist",
      ]
end
