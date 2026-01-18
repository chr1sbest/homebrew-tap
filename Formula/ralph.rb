class Ralph < Formula
  desc "Ralph Loop (Claude Code) with some bells and whistles"
  homepage "https://github.com/chr1sbest/wiggum"
  version "1.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.2.2/ralph_darwin_arm64.tar.gz"
      sha256 "953f60cdd7111eb8e07b5c80aca17aac352e1247fe93905357a039317fe28b48"
    else
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.2.2/ralph_darwin_amd64.tar.gz"
      sha256 "b9489ff7e52c64aef8ede656132cb861133f76a5dce9bccedaa4221b877f8c21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.2.2/ralph_linux_arm64.tar.gz"
      sha256 "1adf537837d57cf2ea0933a6521977f0e5c6c6a68347f95f1a15897d0f57d8e8"
    else
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.2.2/ralph_linux_amd64.tar.gz"
      sha256 "3788412eab142f5173a32e2dbe4f5313ea908871bd1e12621e6b7c54f7d77684"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    system "#{bin}/ralph", "version"
  end
end
