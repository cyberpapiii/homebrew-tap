class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.7.4"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.7.4/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e039a9e6e5817c08476ac8d1fce7f1a344756705705388bfb0bb5ec33cc66e4d"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.7.4/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "07f5b7c773df68b6383062a4dffac0d00d3d561cc34849eef86aefe8c0d4325b"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.7.4", shell_output("#{bin}/plug --version")
  end
end
