class Mdcopy < Formula
  desc "Convert markdown to clipboard with rich text, HTML, and RTF formats"
  homepage "https://github.com/tarqd/mdcopy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.4.0/mdcopy-aarch64-apple-darwin.tar.gz"
      sha256 "7031d5ec7de5d0fe9b11925444654021daf95b5ae70b7d087181c1c0d94c2883"
    end
    on_intel do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.4.0/mdcopy-x86_64-apple-darwin.tar.gz"
      sha256 "173a3086644fff62e60b7ca3706bbf4271cc35090b33e37e124340ece225252e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.4.0/mdcopy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e02fd2531f30f704e182f529c716057b022f1eeba3cdb38f43c2177bcfae1810"
    end
    on_intel do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.4.0/mdcopy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2aaf4bc5ef9f65ce8152ed1d45df3054db139edc8a1d362d101f35e03abb1f8c"
    end
  end

  def install
    bin.install "mdcopy"
  end

  test do
    assert_match "Convert markdown", shell_output("#{bin}/mdcopy --help")
  end
end
