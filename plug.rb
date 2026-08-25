class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.6.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.2/plug-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "63fb162459ffc5ea3e43ceb26c2b468b5f3f4241806d7fd8ef2fd5167e01be39"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.2/plug-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "8d0bfbc8856ab82c515faae84dd794f1fa7a37cff612dc9b287f17d51fd7f5a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.2/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "730ce77445d0ec1156027fed80d0b05b3b72ff0dddee8276cb8ae3b2c37e8c95"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.2/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0809486faa1c86ae9ee9686fd307187a212bfd161876d89ca27179112f56664"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.6.2", shell_output("#{bin}/plug --version")
  end
end
