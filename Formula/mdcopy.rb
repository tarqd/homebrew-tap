class Mdcopy < Formula
  desc "Convert markdown to clipboard with rich text, HTML, and RTF formats"
  homepage "https://github.com/tarqd/mdcopy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.3.1/mdcopy-aarch64-apple-darwin.tar.gz"
      sha256 "311dfb5134815f9f8ae50455a00f808c8e1c2434f06628645474f41d6a78e661"
    end
    on_intel do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.3.1/mdcopy-x86_64-apple-darwin.tar.gz"
      sha256 "2fe0850e4d4f655c5283d4b936b9144d347999e77cab46c3622e5c47ab63ecb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.3.1/mdcopy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28ad6e3e14bae799603aae361d31c054b7c22521ae43e089af7d12a306430d10"
    end
    on_intel do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.3.1/mdcopy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c0708c4024e7e8dec08861756a28c6be19281dd29ecf5510a91c6edf2303ea6"
    end
  end

  def install
    bin.install "mdcopy"
  end

  test do
    assert_match "Convert markdown", shell_output("#{bin}/mdcopy --help")
  end
end
