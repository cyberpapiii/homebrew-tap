cask "plug-app" do
  version "0.12.2"
  sha256 "90d9c87bd57e7d2716cb0febc2faad31637cc117609350d6ebf7a72852d07ff7"

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
