class Notedmd < Formula
  desc "A command-line tool to convert handwritten notes into clean and readable Markdown files"
  homepage "https://github.com/tejas-raskar/noted.md"
  version "0.2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.2.0/notedmd-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "db2cb7fce244e9e093b1ebe7981a85b947870d3f86813f0106f3c8acec6831fb"
    elsif Hardware::CPU.arm?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.2.0/notedmd-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "beef1cb1e378f32ecbd9cac566c23d672efb09404211ac76c949401c0a06df78"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.2.0/notedmd-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3f7f0d3d70cd353901ed48d37d83dfe394b1b51c9a17e4fabb6f25d23dc0b6f9"
    end
  end

  def install
    bin.install "notedmd"
  end

  test do
    system "#{bin}/notedmd", "--version"
  end
end
