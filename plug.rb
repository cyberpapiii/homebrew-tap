class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.6.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.3/plug-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "d71cef46486a69842e19cf78c42158e0c0551cd0e80a4388304f5cc5e9a91d14"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.3/plug-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "5c669a1313d3fe5cd8d77045cb22e2fd0b6e9e20cdf5803a9f9fd5d02005e466"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.3/plug-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe0b2f6ae10d616660f2db104066034f13c2c59b8613dc45e446213d338ee054"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.6.3/plug-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79e867dc7c9a63926a7038cef6f1e71e9700d1d6001de4b98f1dcfff40848c97"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.6.3", shell_output("#{bin}/plug --version")
  end
end
