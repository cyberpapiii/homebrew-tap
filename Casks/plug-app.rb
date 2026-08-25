cask "plug-app" do
  version "0.6.3"
  sha256 "b343c519676dac87c10ea59d8913fecb2193368181505d9162e280242f34d057"

  url "https://github.com/cyberpapiii/plug/releases/download/v0.6.3/Plug-0.6.3.dmg"
  name "Plug"
  desc "Calm macOS control surface for the Plug MCP multiplexer"
  homepage "https://github.com/cyberpapiii/plug"

  auto_updates true
  depends_on macos: ">= :sonoma"
  app "Plug.app"
end
