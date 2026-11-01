class Codescope < Formula
  desc "Single-binary code intelligence for AI coding agents (MCP / CLI / JSON)"
  homepage "https://github.com/adventurewave-labs/codescope"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adventurewave-labs/codescope/releases/download/v0.3.1/codescope-aarch64-apple-darwin.tar.gz"
      sha256 "29e73c5dd6ee774bbfc06201ab01cd7017d242be78c3ebaa0e4456f69db92b4a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/adventurewave-labs/codescope/releases/download/v0.3.1/codescope-x86_64-apple-darwin.tar.gz"
      sha256 "7f9300ab783c470944f3fc46e1ba1c00d417739fa573f3b59345740d992fee86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/adventurewave-labs/codescope/releases/download/v0.3.1/codescope-aarch64-unknown-linux-musl.tar.gz"
      sha256 "161e2a4a23942975a4586dc1a889ea40c726559a962b3c0f93a26ff50f897552"
    end
    if Hardware::CPU.intel?
      url "https://github.com/adventurewave-labs/codescope/releases/download/v0.3.1/codescope-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c3811c43c0fff86c027bd1401ce256b6a4f14f1ecb523b5007230fe18a9cb82"
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
