class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.7.3"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.7.3/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "105a89f7d26267679dbd145d4c19c556cae8eb11465017a505c4f333337a5cfe"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.7.3/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43bf814dca3c62a7940e1e59616895be98825cf157c2012c8f346bcd02a90ac4"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.7.3", shell_output("#{bin}/plug --version")
  end
end
