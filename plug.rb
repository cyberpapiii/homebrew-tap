class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.4.0/plug-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "f864a3e24fd6812c8bc6ba9415edc6ee401fe2b39e43c6ad68ac1f027ece9687"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.4.0/plug-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "e8d2e697b8a74ca35207414490c42fd46065354403eeb5790d75e097d89661b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.4.0/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "460af900ba5990cd07d6a1447a60351b71dcb75b3fb12419988eb6d15f1b24fc"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.4.0/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d628094ae38f999106d2012a0ddcfd5c4b0633a5a04fc6e5fa61945f5bc4355"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.4.0", shell_output("#{bin}/plug --version")
  end
end
