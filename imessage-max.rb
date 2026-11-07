class ImessageMax < Formula
  desc "MCP server for iMessage - AI assistant integration"
  homepage "https://github.com/cyberpapiii/imessage-max"
  url "https://github.com/cyberpapiii/imessage-max/releases/download/v1.8.0/imessage-max-macos.tar.gz"
  version "1.8.0"
  sha256 "be91c55aba417626c1de89ca9ddf31b4d2a47e90e084089df21c130627de30ec"
  license "MIT"

  disable! date: "2026-11-07", because: "is now a Mac app", replacement_cask: "cyberpapiii/tap/imessage-max"

  depends_on arch: :arm64
  depends_on :macos
  on_macos do
    depends_on macos: :sequoia
  end

  def install
    bin.install "imessage-max"
  end

  test do
    assert_match "iMessage Max", shell_output("#{bin}/imessage-max --version")
  end
end
