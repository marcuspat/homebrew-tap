class Cargocrypt < Formula
  desc "Zero-config file encryption for Rust projects (ChaCha20-Poly1305 + Argon2id)"
  homepage "https://github.com/marcuspat/cargocrypt"
  url "https://static.crates.io/crates/cargocrypt/cargocrypt-0.3.0.crate"
  sha256 "0ebbcc2b0a6714df415e5db9439bffbbe6fc98155f03c9d0600749234f09c06c"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cargocrypt --version")
  end
end
