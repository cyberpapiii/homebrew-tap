cask "plug-app" do
  version "0.5.3"
  sha256 "faa003038c1d9fe5400a2d4a5227bc75a3c6a6401240234226c7b234d8a1f003"

  url "https://github.com/cyberpapiii/plug/releases/download/v0.5.3/Plug-0.5.3.dmg"
  name "Plug"
  desc "Calm macOS control surface for the Plug MCP multiplexer"
  homepage "https://github.com/cyberpapiii/plug"

  auto_updates true
  depends_on macos: ">= :sonoma"
  app "Plug.app"
end
