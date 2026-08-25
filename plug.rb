class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.1/plug-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "36572f1d3a0d93512420344823317b8c86a0fe9edc5961ac5d352cc8374cac4c"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.1/plug-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "79d6cf18fd9307cff15723cb8fea677627b7dcc723c74751a8cd76aba89555d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.1/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc6ebd2917a5c60a84b25c4a6b522c79562094e35411294fb264aedf7c93d19d"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.1/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d273156e58cb0975be03adc3c2bc8d6f184255fb7fc3464f32ca7c5fb8f90d36"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.6.1", shell_output("#{bin}/plug --version")
  end
end
