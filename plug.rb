class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.3.0/plug-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "31939d8c80ed132466aec1e6a30837bcecb0fdd3f59f0e1abef9774898d21f99"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.3.0/plug-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "d99126cad1f826c39e2b7a1610d8a318c70e1fd24185b8fb869b045c5b2b5a2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.3.0/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c80859483d8889d6ce96f95db4f17b4982d805875c2f0094a1d5125491651663"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.3.0/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0cc08e98315247b41fcace2b10bc64ebbeacaa4be6cfbfd0506c087d08f6e65"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.3.0", shell_output("#{bin}/plug --version")
  end
end
