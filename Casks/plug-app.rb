cask "plug-app" do
  version "0.6.0"
  sha256 "cc8396a83b95338ba23e02b56b073c64ec50fcfc3f3f2483a23c64d9e13d512b"

  url "https://github.com/cyberpapiii/plug/releases/download/v0.6.0/Plug-0.6.0.dmg"
  name "Plug"
  desc "Calm macOS control surface for the Plug MCP multiplexer"
  homepage "https://github.com/cyberpapiii/plug"

  auto_updates true
  depends_on macos: ">= :sonoma"
  app "Plug.app"
end
