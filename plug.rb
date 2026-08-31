class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.8.9"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.9/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "99bf0cc3c09a0de9011409e29f09e88443b0e26e5a53d71dbeee17de75d6c572"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.9/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1987c85599dec41bdf3ba9ca1c6bb0eb82f51846d08decbc965a18cadaa18c38"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.8.9", shell_output("#{bin}/plug --version")
  end
end
