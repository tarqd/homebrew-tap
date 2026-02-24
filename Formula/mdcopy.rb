class Mdcopy < Formula
  desc "Convert markdown to clipboard with rich text, HTML, and RTF formats"
  homepage "https://github.com/tarqd/mdcopy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.5.0/mdcopy-aarch64-apple-darwin.tar.gz"
      sha256 "c2ec2514871f3dd2b02000c395cb2adca4da9dfa28fdb701c314b8309931e52d"
    end
    on_intel do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.5.0/mdcopy-x86_64-apple-darwin.tar.gz"
      sha256 "2c26dc1d3aab75aed73f1c8b1322eb67782bca7d1a71da294b9e310400d28a2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.5.0/mdcopy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d0668598d6b5fd47cad81e6f88989eb8cee9024da3d766fb3ab98c443aa03d6c"
    end
    on_intel do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.5.0/mdcopy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "031b7d8b6ad1b82160ac201360395bfab6848239144fd569de8e077550a2991b"
    end
  end

  def install
    bin.install "mdcopy"
  end

  test do
    assert_match "Convert markdown", shell_output("#{bin}/mdcopy --help")
  end
end
