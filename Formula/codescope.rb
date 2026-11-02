class Codescope < Formula
  desc "Single-binary code intelligence for AI coding agents (MCP / CLI / JSON)"
  homepage "https://github.com/adventurewave-labs/codescope"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adventurewave-labs/codescope/releases/download/v0.3.1/codescope-aarch64-apple-darwin.tar.gz"
      sha256 "52cc8b9d72178258b731dfc8ab62d30b5edf01e15716b8fa69bf6fc7b67e36ac"
    end
    if Hardware::CPU.intel?
      url "https://github.com/adventurewave-labs/codescope/releases/download/v0.3.1/codescope-x86_64-apple-darwin.tar.gz"
      sha256 "e95d9be91f97c2bb4d1cf68746861baa6d72c9765309a4ba5cd810dedbce3e41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/adventurewave-labs/codescope/releases/download/v0.3.1/codescope-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9eb8f7dcd02d6e8ff795a7a63b102daf5b0e3576f7d079e7a01ec8e1ad385dba"
    end
    if Hardware::CPU.intel?
      url "https://github.com/adventurewave-labs/codescope/releases/download/v0.3.1/codescope-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7578d940fe14f229072ac9da69ef96c8fb33f7cf73f7292683960cd95049a2a9"
    end
  end

  def install
    binary = Dir["**/codescope"].find { |f| File.file?(f) }
    odie "codescope binary not found in archive" if binary.nil?
    bin.install binary => "codescope"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codescope --version")
  end
end
