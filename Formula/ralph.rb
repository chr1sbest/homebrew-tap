class Ralph < Formula
  desc "Ralph Loop (Claude Code) with some bells and whistles"
  homepage "https://github.com/chr1sbest/wiggum"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.1.0/ralph_darwin_arm64.tar.gz"
      sha256 "93c5410ce2be72256ecf6f9775491fc3c2048b60f579d5034dcdc8dffd1b1656"
    else
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.1.0/ralph_darwin_amd64.tar.gz"
      sha256 "9a7bdfb7931d70384f08fa2a5286b92f7d761bf3d45c55b44b18e17bd61bad14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.1.0/ralph_linux_arm64.tar.gz"
      sha256 "def29792968e7131ec144abd01bdf4e4ec83c9d6b70e277beef572da0410f493"
    else
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.1.0/ralph_linux_amd64.tar.gz"
      sha256 "af0c37a07bb0d7366c83686f958eeeea905ffeee37dc4ea005f6f2f9fa0ebd36"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    system "#{bin}/ralph", "version"
  end
end
