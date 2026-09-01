cask "plug-app" do
  version "0.8.11"
  sha256 "2c58c2259f778254796bb13db3e4966a5c53b852d87976c29436e18c0f2ee1c9"

  url "https://github.com/cyberpapiii/plug/releases/download/v#{version}/Plug-#{version}.dmg"
  name "Plug"
  desc "Calm macOS control surface for the Plug MCP multiplexer"
  homepage "https://github.com/cyberpapiii/plug"

  auto_updates true
  depends_on macos: ">= :sonoma"
  app "Plug.app"
  uninstall script: {
    executable: "#{appdir}/Plug.app/Contents/Resources/plug",
    args:       ["uninstall-cleanup"],
  }
  caveats "Open Plug once to finish command-line and background-service setup."
end
