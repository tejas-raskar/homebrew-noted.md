class Notedmd < Formula
  desc "A command-line tool to convert handwritten notes into clean and readable Markdown files"
  homepage "https://github.com/tejas-raskar/noted.md"
  version "0.3.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.3.0/notedmd-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "77861bcc2bb24ce16da0bc8138b84a16eb0daa97ef2dbe7256c8e1ace55049a1"
    elsif Hardware::CPU.arm?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.3.0/notedmd-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "0b0e567ada4ae0b453c9e9ea6081543a3a4d373c2532c70d485362ca2602d5dc"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.3.0/notedmd-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1c4cfc6e3e2eeb60636c0a3bf6e79477bd8c9e04ac475630a10f44c2456be159"
    end
  end

  def install
    bin.install "bin/notedmd"
  end

  test do
    system "#{bin}/notedmd", "--version"
  end
end
