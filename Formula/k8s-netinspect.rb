class K8sNetinspect < Formula
  desc "Minimal Kubernetes network inspection tool for CNI and pod connectivity"
  homepage "https://github.com/marcuspat/k8s-netinspect"
  url "https://static.crates.io/crates/k8s-netinspect/k8s-netinspect-0.2.1.crate"
  sha256 "8680642aaf9b468b24f33edd090d9d30585165f315ede6545a711150042101fe"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"k8s-netinspect", :executable?, "k8s-netinspect binary must be executable"
  end
end
