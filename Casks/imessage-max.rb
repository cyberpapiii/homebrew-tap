cask "imessage-max" do
  version "2.1.0"
  sha256 "7cc409b0b135b5ad9a6ca8a96bdd4a378881be6aac5ed7f5657e2e4fb0fa0638"

  url "https://github.com/cyberpapiii/imessage-max/releases/download/v#{version}/iMessage-Max-#{version}.dmg"
  name "iMessage Max"
  desc "MCP server that lets AI assistants read, search and send iMessages"
  homepage "https://github.com/cyberpapiii/imessage-max"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "iMessage Max.app"
  binary "#{appdir}/iMessage Max.app/Contents/MacOS/imessage-max"

  uninstall quit:   "com.cyberpapiii.imessage-max.menubar",
            signal: ["USR1", "com.cyberpapiii.imessage-max.helper"]

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
