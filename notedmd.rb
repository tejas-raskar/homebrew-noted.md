class Notedmd < Formula
  desc "A command-line tool to convert handwritten notes into clean and readable Markdown files"
  homepage "https://github.com/tejas-raskar/noted.md"
  version "0.2.3"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.2.3/notedmd-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "1bc4327477c6e81dcfd42ac35d9541663c8dcf625d55fce261eb6ef8699f441e"
    elsif Hardware::CPU.arm?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.2.3/notedmd-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "d7d34bdfc12e070220a49d58526f551372a7fb3701c79efb9c88c232a555809e"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tejas-raskar/noted.md/releases/download/v0.2.3/notedmd-v0.2.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e7a1ad48a78d2ff4b6292317ae9b1dcab830455edbdfd0bce4249106f260564"
    end
  end

  def install
    bin.install "bin/notedmd"
  end

  test do
    system "#{bin}/notedmd", "--version"
  end
end
