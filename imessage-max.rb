class ImessageMax < Formula
  desc "MCP server for iMessage - AI assistant integration"
  homepage "https://github.com/cyberpapiii/imessage-max"
  url "https://github.com/cyberpapiii/imessage-max/releases/download/v1.2.1/imessage-max-macos.tar.gz"
  sha256 "7fd3312c30f8f170f75f985f49aacb59533d3b12b1c09eb257cbcf67555c3032"
  license "MIT"

  depends_on :macos
  depends_on macos: :ventura

  def install
    bin.install "imessage-max"
  end

  test do
    assert_match "iMessage Max", shell_output("#{bin}/imessage-max --version")
  end
end
