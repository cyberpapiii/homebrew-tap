class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.8.1"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.1/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "88349ac3ad49e6fb48a75516a0f2b10564f9520fd90248fcb8c3b98f8ed6404c"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.1/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9d08a1a2c50af0fa9ceea76f8f16169e26dc2567e58302dfb9ab9cb7bdc324c"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.8.1", shell_output("#{bin}/plug --version")
  end
end
