class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.5.0/plug-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "ebbee12ec83166348e2b7dfef85380d34283ac4904b6f17e34b5a5d8f0ccf135"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.5.0/plug-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "158c3920ebf5c0d7d25b6b70a5b59184403775cebaf68ac6cabb3c7b7fbc9459"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.5.0/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8675e26d156b7eb23b8a5092f7376e28b63f489098e96c36cc563179e0664efa"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.5.0/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db0acbe6ef7f5ea67ac093c4e1479a4813a045a8e42e8f932142c18b84b0ba36"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.5.0", shell_output("#{bin}/plug --version")
  end
end
