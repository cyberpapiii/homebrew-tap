class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.8.8"
  license "Apache-2.0"

  depends_on :linux

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.8/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f55fd012a2afd24b00a32b328bc8dec8e554477a41bc35879d5143b31b47a0b1"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.8.8/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "756b05e0591f79ea874eff203acf8e3218a8433d01a0d0e60ab4fdcb77eb31e0"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.8.8", shell_output("#{bin}/plug --version")
  end
end
