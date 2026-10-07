cask "plug-app" do
  version "0.11.0"
  sha256 "1c8a30ee74cbd06d089e1c7d3636f1bce0d7a155ecfecc147ee40aa27ef25fa4"

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
