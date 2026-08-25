cask "plug-app" do
  version "0.6.2"
  sha256 "0f6cbb0ed0934f291938c2e4643edc78e17c635c3fa50c451bdc7575d1953d6d"

  url "https://github.com/cyberpapiii/plug/releases/download/v0.6.2/Plug-0.6.2.dmg"
  name "Plug"
  desc "Calm macOS control surface for the Plug MCP multiplexer"
  homepage "https://github.com/cyberpapiii/plug"

  auto_updates true
  depends_on macos: ">= :sonoma"
  app "Plug.app"
end
