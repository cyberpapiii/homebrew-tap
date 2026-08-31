class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.8.10"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.10/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6045a4c6cd0264802b1ba3cbf33c7c2c10147b065d105125384a95648a1819bb"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.10/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47f10af6b02556a3885edcfab65df81811f0170b25485eaa45458997b71249dc"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.8.10", shell_output("#{bin}/plug --version")
  end
end
