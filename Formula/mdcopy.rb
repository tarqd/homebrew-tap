class Mdcopy < Formula
  desc "Convert markdown to clipboard with rich text, HTML, and RTF formats"
  homepage "https://github.com/tarqd/mdcopy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.5.1/mdcopy-aarch64-apple-darwin.tar.gz"
      sha256 "cd3a0c2f9f5965f78dd4cc05e2ae88b6318389cb8495d272baa53886a123621f"
    end
    on_intel do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.5.1/mdcopy-x86_64-apple-darwin.tar.gz"
      sha256 "8554a3472afa101f910065f128e44b2200144591e4d33905f11692c9d659b383"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.5.1/mdcopy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a1da0b3de90d3ab7e530250e8f9bd33b2d86c2e61730c786de2df24287d1f690"
    end
    on_intel do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.5.1/mdcopy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "407d45aab78b9eb0c400d8b7467e2e9d699de2ffad6409e2c4f653519f795b64"
    end
  end

  def install
    bin.install "mdcopy"
  end

  test do
    assert_match "Convert markdown", shell_output("#{bin}/mdcopy --help")
  end
end
