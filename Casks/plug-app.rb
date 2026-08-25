cask "plug-app" do
  version "0.5.1"
  sha256 "45b5e6e08620559e5afbd962eaf3c7e6216259c1142773086bc1436c073bda32"

  url "https://github.com/cyberpapiii/plug/releases/download/v0.5.1/Plug-0.5.1.dmg"
  name "Plug"
  desc "Calm macOS control surface for the Plug MCP multiplexer"
  homepage "https://github.com/cyberpapiii/plug"

  auto_updates true
  depends_on macos: ">= :sonoma"
  app "Plug.app"
end
