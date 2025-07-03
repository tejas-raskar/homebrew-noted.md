class Notedmd < Formula
  desc "A command-line tool to convert handwritten notes into clean and readable Markdown files"
  homepage "https://github.com/tejas-raskar/noted.md"
  version "0.2.2"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.2.2/notedmd-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "6a1ea412fc821b791f7da457ae029727e706521dd73c3df3070d0b6e3c9e9d21"
    elsif Hardware::CPU.arm?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.2.2/notedmd-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "b622aee509eefa7df42a54028d94814428d07ce0165217543ffa92b2b0619e07"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.2.2/notedmd-v0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "604df6fc03aaa1ef684258661241edf6a4bb6d5aabc3755a1bf56e62cd0d624e"
    end
  end

  def install
    bin.install "bin/notedmd"
  end

  test do
    system "#{bin}/notedmd", "--version"
  end
end
