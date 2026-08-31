class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.8.7"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.7/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7a1c074c10b31270bd8dbb458f0e3dea0e94287ecf91ef2db545d1a60d662a13"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.7/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ee35e0591dc3b745d910f9efc8ef470f55f577a4af55cf546cfbcbdcd246789"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.8.7", shell_output("#{bin}/plug --version")
  end
end
