class Sentinel < Formula
  desc "Safe agentic system administration: policy-gated terminal UI and CLI"
  homepage "https://github.com/marcuspat/Sentinel"
  url "https://github.com/marcuspat/Sentinel/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "6826cb8320049be3aeba8a6ee28a069bd139cc56ccef81ee427be476949a1cbd"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", "sentinel-tui", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sentinel --version")
  end
end
