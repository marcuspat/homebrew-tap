class Secretscan < Formula
  desc "Rust secret scanner CLI: 50 patterns, entropy + obfuscation detection"
  homepage "https://github.com/adventurewave-labs/secret-scan"
  url "https://static.crates.io/crates/secretscan/secretscan-0.2.5.crate"
  sha256 "d38e771948bc989cb05f15f9f8f62b88be11b9847a23b56dd4b08e9ffd5a0dc3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/secretscan --version")
  end
end
