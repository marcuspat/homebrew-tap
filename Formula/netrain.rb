class Netrain < Formula
  desc "Matrix-style network packet monitor with real-time threat detection"
  homepage "https://github.com/marcuspat/netrain"
  url "https://static.crates.io/crates/netrain/netrain-1.0.1.crate"
  sha256 "c5262d2b77fd02edaa127358fa6b3d63af3ea6cdf0c0107be69bd228f66384eb"
  license "MIT"

  depends_on "rust" => :build
  uses_from_macos "libpcap"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/netrain --version")
  end
end
