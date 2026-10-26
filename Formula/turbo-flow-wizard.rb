class TurboFlowWizard < Formula
  desc "Interactive setup wizard that generates CLAUDE.md files for Claude Code"
  homepage "https://github.com/adventurewave-labs/turbo-flow-wizard"
  url "https://raw.githubusercontent.com/adventurewave-labs/turbo-flow-wizard/v0.1.0/turbo-flow-wizard.sh"
  sha256 "8b6f540c1897ac9f058f43980cf4e3d717d60b471ff7e47d438d52dfee9f0c45"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "turbo-flow-wizard.sh" => "turbo-flow-wizard"
    chmod 0555, bin/"turbo-flow-wizard"
  end

  test do
    assert system("bash", "-n", bin/"turbo-flow-wizard"), "wizard script must be valid bash"
  end
end
