class Claudio < Formula
  desc "Voice-to-text CLI with native speech recognition"
  homepage "https://github.com/tarqd/claudio"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tarqd/claudio/releases/download/v0.1.1/claudio-aarch64-apple-darwin.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_intel do
      url "https://github.com/tarqd/claudio/releases/download/v0.1.1/claudio-x86_64-apple-darwin.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  depends_on :macos

  def install
    bin.install "claudio"
  end

  test do
    assert_predicate bin/"claudio", :exist?
  end
end
