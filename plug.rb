class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.7.5"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.7.5/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9e59d22b9ad82a3d2dfbc61a93831392a40bfceb3870384d2fd0ad2af2d8a5a5"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.7.5/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d77b28a28ed0336a5fe4edbf49b9006189c71c889f1326717cd42d1d057bf8c"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.7.5", shell_output("#{bin}/plug --version")
  end
end
