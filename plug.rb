class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.8.4"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.4/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad8e3e72b82988dac978874d2bea2ada34d59f59470ff485cb4015833a81efd7"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.4/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8e03a31fab298c7b095af50407368015b0d4a8c14b86f95e04d57bf92b55c64"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.8.4", shell_output("#{bin}/plug --version")
  end
end
