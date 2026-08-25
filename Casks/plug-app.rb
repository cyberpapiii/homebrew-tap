cask "plug-app" do
  version "0.5.0"
  sha256 "f055e89a9163d33b90940c75cbd404f10625b9ceb316e3337300ea0777d31c49"

  url "https://github.com/cyberpapiii/plug/releases/download/v0.5.0/Plug-0.5.0.dmg"
  name "Plug"
  desc "Calm macOS control surface for the Plug MCP multiplexer"
  homepage "https://github.com/cyberpapiii/plug"

  auto_updates true
  depends_on macos: ">= :sonoma"
  app "Plug.app"
end
