class K8sNetinspect < Formula
  desc "Minimal Kubernetes network inspection tool for CNI and pod connectivity"
  homepage "https://github.com/marcuspat/k8s-netinspect"
  url "https://static.crates.io/crates/k8s-netinspect/k8s-netinspect-1.0.0.crate"
  sha256 "295b6782a7cb927a3aaf3735d0ad4d391f40a771f8a0358e54428a23b283dc39"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/k8s-netinspect --version")
  end
end
