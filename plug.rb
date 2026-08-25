class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.0/plug-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "bb2b782bd81352c4f15be35417d4a34ed9b2414012c1c1cce19843ba54d86a1e"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.0/plug-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "5ade71dffa328ad97524666671dbba35775dba67d66c06a395d8865432024d36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.0/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b52bc9939019a195f9d03057c034ec6ade50ef48145189882eb50224dd3c2cbc"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.0/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c218b0f5ae03d21670d994b0d12d57f42d41d34b465fd2fa8a3115921b2a585"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.6.0", shell_output("#{bin}/plug --version")
  end
end
