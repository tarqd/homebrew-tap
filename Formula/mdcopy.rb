class Mdcopy < Formula
  desc "Convert markdown to clipboard with rich text, HTML, and RTF formats"
  homepage "https://github.com/tarqd/mdcopy"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/tarqd/mdcopy/releases/download/v#{version}/mdcopy-aarch64-apple-darwin.tar.gz"
      sha256 "d64e4b6ea0f4674856f454a34aeee098c540312e98acb79209e7d816f9e89d61"
    end
    on_intel do
      url "https://github.com/tarqd/mdcopy/releases/download/v#{version}/mdcopy-x86_64-apple-darwin.tar.gz"
      sha256 "43776d2251303212e88d0701fba7de328246a95d46648851e58beaccf8c16ea9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tarqd/mdcopy/releases/download/v#{version}/mdcopy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66bb7d3a083058cbddc9b602f5ee4ec86ff3144780fd7e677395c9dd3671396b"
    end
    on_intel do
      url "https://github.com/tarqd/mdcopy/releases/download/v#{version}/mdcopy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97d37a870b42552c53562e1da61c87b5070a340f856f9a72d8d21134341c34cb"
    end
  end

  def install
    bin.install "mdcopy"
  end

  test do
    assert_match "Convert markdown", shell_output("#{bin}/mdcopy --help")
  end
end
