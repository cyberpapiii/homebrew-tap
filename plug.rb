class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.8.6"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.6/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5a342bdd4a881e2bd4e24b81c1db4f6bad1840b9105240a261ae6b98c6cdc53a"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.6/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b5177d27b8e4cfdb35cacaf425d7339f234ea5882fe1b452ea668ad6a3e36c2"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.8.6", shell_output("#{bin}/plug --version")
  end
end
