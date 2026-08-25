class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.5.1/plug-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "f5ac3dafc823a2fec7405ac5639007ce11c9b36826c65354f903d1efb807171b"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.5.1/plug-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "64f05531169165cbb1c4e006361275f8602dec015a58844791e6019fa97fa698"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.5.1/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7652e99171a1ee1aa6de41b28b953327dc7261a6bdd42252dd8a66d3fe2cdbbe"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.5.1/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c2363e9f6c8d5a60dc43c1631b0a50905648e9170c4e113c5da7dfb99f941cd"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.5.1", shell_output("#{bin}/plug --version")
  end
end
