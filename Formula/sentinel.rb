class Sentinel < Formula
  desc "Safe agentic system administration: policy-gated terminal UI and CLI"
  homepage "https://github.com/marcuspat/Sentinel"
  url "https://github.com/marcuspat/Sentinel/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "af3fe09ecc7af4ed19025494b0e692793435e7fec444af45100a337180f55a7f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "sentinel-tui")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sentinel --version")
  end
end
