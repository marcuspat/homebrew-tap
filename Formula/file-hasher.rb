class FileHasher < Formula
  desc "CLI for SHA256, SHA1 and MD5 file hashes with verify and streaming"
  homepage "https://github.com/marcuspat/file-hasher"
  url "https://static.crates.io/crates/file-hasher/file-hasher-0.1.2.crate"
  sha256 "a60181d4dcd746120ab462cc9ec080ef7cce61eb2f2997267665a612d36e6162"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"file-hasher", :executable?, "file-hasher binary must be executable"
  end
end
