class Sentinel < Formula
  desc "Safe agentic system administration: policy-gated terminal UI and CLI"
  homepage "https://github.com/marcuspat/Sentinel"
  url "https://github.com/marcuspat/Sentinel/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "c1466ec94a42eee6d20553277f03bc7267ec790729e9092c1e9d282b5189d674"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "sentinel-tui")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sentinel --version")
  end
end
