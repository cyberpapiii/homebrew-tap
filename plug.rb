class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.8.0"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.0/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "72d623f69df2fbab4fad62865f46baab0f8f20245290146359ec71e56a46c055"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.0/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45a0c08410560c20e694948801ff608ee77dc5254d2d7b5166d2e0b0dd1e6386"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.8.0", shell_output("#{bin}/plug --version")
  end
end
