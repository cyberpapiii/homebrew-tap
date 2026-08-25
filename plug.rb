class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.6.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.4/plug-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "360ef28d5f6d41797b92ea49a5d90d2bb63d8519156e27b47fd3b4fb10b40b84"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.4/plug-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "bd5d1e0d2f978ff7511ce2b45229495999723ba15a3f6058fb76b21e4a52b76c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.4/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0daa321bb702e8341a786aa9092d42fe0b13518ece04bfbbce48ba5382e830d9"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.4/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a80b8c4cc305388bea848694fe6cc46a03dd3ca212a5b417032bd6d8f39dc2c"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.6.4", shell_output("#{bin}/plug --version")
  end
end
