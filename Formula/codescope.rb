class Codescope < Formula
  desc "Single-binary code intelligence for AI coding agents (MCP / CLI / JSON)"
  homepage "https://github.com/adventurewave-labs/codescope"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adventurewave-labs/codescope/releases/download/v0.3.0/codescope-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "a1f6f9bbdc47647c804ecd0080dc2f60a48eef846e5edf18632b39bd5d7f59b0"
    end
    if Hardware::CPU.intel?
      url "https://github.com/adventurewave-labs/codescope/releases/download/v0.3.0/codescope-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "d9de121b741714a9a64b3d814e0ed4f97758c333b3bd6a5763fd40e086346f4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/adventurewave-labs/codescope/releases/download/v0.3.0/codescope-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a31aaadb4791fd72d9916ab508efaee6012789e0dd0f7ba9d3a79b59379135f0"
    end
    if Hardware::CPU.intel?
      url "https://github.com/adventurewave-labs/codescope/releases/download/v0.3.0/codescope-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e77981adea575dea93de9bc359f3895738d613c092583198f7f8c6938bfb3959"
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
