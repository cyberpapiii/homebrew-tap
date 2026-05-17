class Plug < Formula
  desc "MCP multiplexer - one config, every AI client connected, every server shared"
  homepage "https://github.com/cyberpapiii/plug"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.3.0/plug-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "85538afa1d0d50cf18e1341a3abba44d00a6548e0b5458c23b631f5af07ef2e5"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.3.0/plug-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "14c5f240f99d9b808ccd52aa18479a559342991f053acc47430426a35c181103"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cyberpapiii/plug/releases/download/v0.3.0/plug-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec416794fbc97ca16c476e2d8ce3e1fcd312ce1dfb4534857deefd5c8bab846e"
    else
      url "https://github.com/cyberpapiii/plug/releases/download/v0.3.0/plug-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e73bd9fc4a3e8fa0db4a343bbb8465d2ecbecc5012435bd58681935f4523791b"
    end
  end

  def install
    bin.install "plug"
  end

  test do
    assert_match "plug 0.3.0", shell_output("#{bin}/plug --version")
  end
end
