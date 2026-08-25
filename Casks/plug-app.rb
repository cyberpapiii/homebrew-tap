cask "plug-app" do
  version "0.6.1"
  sha256 "bad1aeb772ba6ad47117f54ea37193c38f1afe2d40fe5de3c1f7b66a54218da5"

  url "https://github.com/cyberpapiii/plug/releases/download/v0.6.1/Plug-0.6.1.dmg"
  name "Plug"
  desc "Calm macOS control surface for the Plug MCP multiplexer"
  homepage "https://github.com/cyberpapiii/plug"

  auto_updates true
  depends_on macos: ">= :sonoma"
  app "Plug.app"
end
