class Mdcopy < Formula
  desc "Convert markdown to clipboard with rich text, HTML, and RTF formats"
  homepage "https://github.com/tarqd/mdcopy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.2.0/mdcopy-aarch64-apple-darwin.tar.gz"
      sha256 "0097adc5f14616ee07741c948e26759ab778abbe4cef228fe4cc1e078deafce5"
    end
    on_intel do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.2.0/mdcopy-x86_64-apple-darwin.tar.gz"
      sha256 "67bf445a447bda3d73c1d569263b95ee61b74e8ff08d25ccb483b13c701b7615"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.2.0/mdcopy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c78e08677eae4525ff8d75261a73d30361e1f49fe6dbf3ea4e202287b4dc43a7"
    end
    on_intel do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.2.0/mdcopy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8fe11bfcee8c6f00663788c417041f926a48436a1a998cef45c134aef54ae718"
    end
  end

  def install
    bin.install "mdcopy"
  end

  test do
    assert_match "Convert markdown", shell_output("#{bin}/mdcopy --help")
  end
end
