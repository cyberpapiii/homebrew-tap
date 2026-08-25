cask "plug-app" do
  version "0.5.2"
  sha256 "ff0674acae5a5ced95e7a13fd08d61752b59a77e33e733f542de7f12651bc392"

  url "https://github.com/cyberpapiii/plug/releases/download/v0.5.2/Plug-0.5.2.dmg"
  name "Plug"
  desc "Calm macOS control surface for the Plug MCP multiplexer"
  homepage "https://github.com/cyberpapiii/plug"

  auto_updates true
  depends_on macos: ">= :sonoma"
  app "Plug.app"
end
