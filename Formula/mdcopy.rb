class Mdcopy < Formula
  desc "Convert markdown to clipboard with rich text, HTML, and RTF formats"
  homepage "https://github.com/tarqd/mdcopy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.2.1/mdcopy-aarch64-apple-darwin.tar.gz"
      sha256 "986555c57856cbfbd9bd00cc9ca409f0716b934ffcc642a7a30e10ab36f90f2a"
    end
    on_intel do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.2.1/mdcopy-x86_64-apple-darwin.tar.gz"
      sha256 "c8ddb50d0c8f20144380013bb4947ec850657daf9db6c9750b432bebe34c7063"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.2.1/mdcopy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "69b6808601507c29cf128b77562ca82a871efa1093f27c3c733e1a1302e0f6a0"
    end
    on_intel do
      url "https://github.com/tarqd/mdcopy/releases/download/v0.2.1/mdcopy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1d1c5434335a56eb622edebc5b69122efaf313e45375f7f05cb8046cdc3b792"
    end
  end

  def install
    bin.install "mdcopy"
  end

  test do
    assert_match "Convert markdown", shell_output("#{bin}/mdcopy --help")
  end
end
