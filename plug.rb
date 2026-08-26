class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.7.1"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.7.1/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe54e2ca1d484c7c6f230aa2aa3c0517c0167d1b40373f5585cbd3b60d6901c0"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.7.1/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d981f70f00b595212f88d4232675797c3ece089e62df1abd9aec3ac034c543a"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.7.1", shell_output("#{bin}/plug --version")
  end
end
