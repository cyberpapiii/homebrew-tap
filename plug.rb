class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.7.2"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.7.2/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4543dfc6f96e959f1c2debc60898f562507dfebba82e9a886fbed699a36c8e56"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.7.2/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9a44e7dd86ec6856dc84b4fce7fa2b269be89586aa59c2a40b1871b7fa59264"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.7.2", shell_output("#{bin}/plug --version")
  end
end
