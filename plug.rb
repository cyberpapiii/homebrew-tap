class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.5.3/plug-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "624d360857b5dd85c7f9dd785b01ae3f8683393107e298849c888f9fa3a7f056"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.5.3/plug-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "ef62234b5eabc8ee28924afc55a73dadc9ef8bf97f94c1ef1e5cfc751666325f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.5.3/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ce133ec9b14c0f1b11b51b1e46237a2e6fca9718d59799fb6c7afc9551a8798"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.5.3/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb88cd1e9da2263e8457a319135b9ae8fc9521efc1f186d9bbf138538c5b7bfe"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.5.3", shell_output("#{bin}/plug --version")
  end
end
