class Netrain < Formula
  desc "Matrix-style network packet monitor with real-time threat detection"
  homepage "https://github.com/marcuspat/netrain"
  url "https://static.crates.io/crates/netrain/netrain-0.2.10.crate"
  sha256 "b2822067d6864b68d5e6ff8a8737de479ad63609f9ad35769037ad0a6c75ea2f"
  license "MIT"

  on_linux do
    depends_on "libpcap"
  end
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/netrain --version")
  end
end
