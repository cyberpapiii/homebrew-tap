class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.8.5"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.5/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d2583a772f96be527b5b32872207e7c27adca7b88c97b80b292a211ccd0eca19"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.5/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "76ab6f0ec7c20e70b3a0a3a25f17d20a70adfa0db543a2df7cf6bda7583f8eb5"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.8.5", shell_output("#{bin}/plug --version")
  end
end
