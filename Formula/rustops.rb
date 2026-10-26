class Rustops < Formula
  desc "Early-stage AIOps toolkit: anomaly detection, alert correlation, Prometheus"
  homepage "https://github.com/marcuspat/rustops"
  url "https://static.crates.io/crates/rustops/rustops-0.1.2.crate"
  sha256 "a390775b20ef7fb47f5468b89affc5ee194a40323d0e2d424272308fa9d535a4"
  license "Apache-2.0"

  depends_on "rust" => :build

  on_linux do
    depends_on "openssl@3"
    depends_on "pkgconf" => :build
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustops --version")
  end
end
