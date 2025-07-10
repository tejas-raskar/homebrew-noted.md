class Notedmd < Formula
  desc "A command-line tool to convert handwritten notes into clean and readable Markdown files"
  homepage "https://github.com/tejas-raskar/noted.md"
  version "0.2.4"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.2.4/notedmd-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "ea2ab31dc3ae104729f6cecdb9ae87085280dba23776d1484897f536034f8e37"
    elsif Hardware::CPU.arm?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.2.4/notedmd-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "371aa9358f2df6520f4d77e86641fcd4a40246e1aefb364c3da6336e26bfcc20"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.2.4/notedmd-v0.2.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "891d3336f31e11b444a0d4178d29ff6a6c31963e921cc031c6ba0fe90d5e857c"
    end
  end

  def install
    bin.install "bin/notedmd"
  end

  test do
    system "#{bin}/notedmd", "--version"
  end
end
