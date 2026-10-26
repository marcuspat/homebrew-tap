class Loopgen < Formula
  desc "Agentic loop runner for Claude Code with a LOOP_STATUS termination contract"
  homepage "https://github.com/marcuspat/loopgen-rs"
  url "https://static.crates.io/crates/loopgen/loopgen-0.3.0.crate"
  sha256 "28c0508057aa8cb1e8c5462fa7d875507a72495cab5696c8dd6aea4285b5f437"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"loopgen", :executable?, "loopgen binary must be executable"
  end
end
