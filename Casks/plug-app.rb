cask "plug-app" do
  version "0.6.4"
  sha256 "de4ff7160c17e564c88455731fcb96da3b6106a9ce7e8208b5380c4ac5f4bab9"

  url "https://github.com/cyberpapiii/plug/releases/download/v0.6.4/Plug-0.6.4.dmg"
  name "Plug"
  desc "Calm macOS control surface for the Plug MCP multiplexer"
  homepage "https://github.com/cyberpapiii/plug"

  auto_updates true
  depends_on macos: ">= :sonoma"
  app "Plug.app"
end
