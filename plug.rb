class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.8.3"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.3/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab479f249ab258e90dce80bc8c1cf995f992512c17624ebd406e6e8f3a17438b"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.3/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3f82e0e58979c85a16cafad5c1da96571b438416de9d3bb332ef049c9c31bdd"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.8.3", shell_output("#{bin}/plug --version")
  end
end
