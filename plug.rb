class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.8.2"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.2/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "acf102f16943927b74c70d9a9addbe3e1e4d6ad0300244b2f0d9dd612dde8685"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.2/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d0e4c1322029a3ae261e2caaf71d1f054d8f3357ab300f1485b50897831c1840"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.8.2", shell_output("#{bin}/plug --version")
  end
end
