class Ralph < Formula
  desc "Ralph Loop (Claude Code) with some bells and whistles"
  homepage "https://github.com/chr1sbest/wiggum"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.2.0/ralph_darwin_arm64.tar.gz"
      sha256 "0c414e2fdcb761c3d6d5c09a0e738cd291a1323250dd648a8243c630f97a7afc"
    else
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.2.0/ralph_darwin_amd64.tar.gz"
      sha256 "d71d9cc177ccd279d909a4f18ba66d07d781312a9b0e802c354649866dbda2aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.2.0/ralph_linux_arm64.tar.gz"
      sha256 "9d4db997662c87854784a5a766119bc3a58ea5a205ff906fdb4c107fcb7a044d"
    else
      url "https://github.com/chr1sbest/wiggum/releases/download/v1.2.0/ralph_linux_amd64.tar.gz"
      sha256 "66bf129fd11f42beed91d98db06e67f0ea5e0b419d019f04887cf50879c9f1fa"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    system "#{bin}/ralph", "version"
  end
end
