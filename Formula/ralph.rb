class Ralph < Formula
  desc "Ralph Loop (Claude Code) with some bells and whistles"
  homepage "https://github.com/chr1sbest/wiggum"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.0.0/ralph_darwin_arm64.tar.gz"
      sha256 "f4aa6dfc345cf4f8175ea15173b8caa6b20079014450ec2e1c01e3bf66ed6913"
    else
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.0.0/ralph_darwin_amd64.tar.gz"
      sha256 "25b8dc89850bce958620880d562f226a6b161dde766f541f43882e68e0c829c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.0.0/ralph_linux_arm64.tar.gz"
      sha256 "cd53368cbd313af08abd6af1c4e8b1fc32ae6bfaa0da7fa5e0016ab7423b9cd4"
    else
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.0.0/ralph_linux_amd64.tar.gz"
      sha256 "2d9f8d675c673c8bc61dcc2355587b33fea515c73d0ddad90272ba0967c78d4a"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    system "#{bin}/ralph", "version"
  end
end
