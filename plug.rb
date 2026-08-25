class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.7.0"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.7.0/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a18f5a01848cca52cc2e821a96f118a3a62847ae1fbcf8b5745a154c37e05dc3"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.7.0/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fecf42be2ceeee48d21c9e88008df1084e112e326d55c8acfa76fd2e5be5c151"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.7.0", shell_output("#{bin}/plug --version")
  end
end
