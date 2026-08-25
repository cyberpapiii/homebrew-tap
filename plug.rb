class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.5.2/plug-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "9fcf910b618c8d2a86c765d0d72745659379925e984e06c450e40493cf58abde"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.5.2/plug-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "3407d6695b02e815c5f015aab756204b7f7ca09d58137b9c1497958aef85d569"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.5.2/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9fb0ca3e94e6d3095101f78a11c2fb7ce1df38252b41edd67c02502ddf33eda1"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.5.2/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1535e765354937c354f0a2a3406cd33d0897d9237236a6e479236e9a10b5fda"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.5.2", shell_output("#{bin}/plug --version")
  end
end
