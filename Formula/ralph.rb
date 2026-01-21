class Ralph < Formula
  desc "Ralph Loop (Claude Code) with some bells and whistles"
  homepage "https://github.com/chr1sbest/wiggum"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.3.0/ralph_darwin_arm64.tar.gz"
      sha256 "a8b881136bd5dee10f65b8ce9864d9c8b4b10e49b26e252521c92937bc34be59"
    else
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.3.0/ralph_darwin_amd64.tar.gz"
      sha256 "508335db808738528eeb971f6c322d66244ea4b0296abd669a59c13a7e6885d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.3.0/ralph_linux_arm64.tar.gz"
      sha256 "c19195dab6e5e5221f28735053af81dce273e5d35fe0c5c4333b5f9ec5c67aa1"
    else
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.3.0/ralph_linux_amd64.tar.gz"
      sha256 "2c7253774e71365941de54e57727c9ab3c477c0b9208968245085584f587d863"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    system "#{bin}/ralph", "version"
  end
end
