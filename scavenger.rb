class Scavenger < Formula
  desc "Burst Miner, written in Rust"
  homepage "https://github.com/PoC-Consortium/scavenger"
  url "https://github.com/PoC-Consortium/scavenger/archive/1.7.8.zip"
  sha256 "7b1ab756d95306af167d378f4cbddd7779a08accdbdc77b6aa0af80b478857cc"

  bottle :unneeded


  depends_on "rust"

  def install
    system "cargo", "build", "--release", "--features=opencl,simd"
    bin.install Dir["target/release/scavenger"]
    bin.install Dir["config.yaml"]
  end

  test do
    system "false"
  end
end
