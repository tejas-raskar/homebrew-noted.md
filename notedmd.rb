class Notedmd < Formula
  desc "A command-line tool to convert handwritten notes into clean and readable Markdown files"
  homepage "https://github.com/tejas-raskar/noted.md"
  version "0.2.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.2.1/notedmd-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "9e549157e5cfa06f1aa3b92adc3f98954a308f83de43e6c2ff07d14a6cc76b7d"
    elsif Hardware::CPU.arm?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.2.1/notedmd-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "65c28c781b8f1907559484f745d5c1b9a18d13a0d68b6c983091008fc7d2d18c"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.2.1/notedmd-v0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c22d9dec09f5dde57d2be611e5f80f103a28ad453e5df615593320f07ebdce2"
    end
  end

  def install
    bin.install "bin/notedmd"
  end

  test do
    system "#{bin}/notedmd", "--version"
  end
end
