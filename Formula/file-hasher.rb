class FileHasher < Formula
  desc "CLI for SHA256, SHA1 and MD5 file hashes with verify and streaming"
  homepage "https://github.com/marcuspat/file-hasher"
  url "https://static.crates.io/crates/file-hasher/file-hasher-1.0.0.crate"
  sha256 "88c60adfca8e37761de1400def7f140461b15ce8a215bbc608da6e1802006de3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/file-hasher --version")
  end
end
