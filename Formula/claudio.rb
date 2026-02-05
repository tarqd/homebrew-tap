class Claudio < Formula
  desc "Voice-to-text CLI with native speech recognition"
  homepage "https://github.com/tarqd/claudio"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tarqd/claudio/releases/download/v0.1.1/claudio-aarch64-apple-darwin.tar.gz"
      sha256 "3f38d00780acaf52ed8d381c5bfead8a9298d3456a768b86d984796ca9dd1f57"
    end
    on_intel do
      url "https://github.com/tarqd/claudio/releases/download/v0.1.1/claudio-x86_64-apple-darwin.tar.gz"
      sha256 "194fd550ce0136bc1c34e23d85924a6b63c24a38d868e409b6ed74d049ca7618"
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
