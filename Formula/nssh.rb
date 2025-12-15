class Nssh < Formula
  desc "SSH wrapper with credential management and session recording"
  homepage "https://github.com/ntwrknrd/nssh"
  license "GPL-3.0-only"
  version "0.2.1"

  on_macos do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.1/nssh_0.2.1_darwin_amd64.tar.gz"
      sha256 "f8b0590b7e29194f30510d7f8ad14795f40d998d274112bed3b3d5de08b71dc5"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.1/nssh_0.2.1_darwin_arm64.tar.gz"
      sha256 "1cfa0401fc8887ef4fabeb9bff75013202e58381ccfe2de808e9efa64cb9dda1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.1/nssh_0.2.1_linux_amd64.tar.gz"
      sha256 "3cf04bc6341da77f0e0b76e07d232ee23231002577ed0996398d15d6b531103b"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.1/nssh_0.2.1_linux_arm64.tar.gz"
      sha256 "e75f665ad93acf090402a09cad592b6cb94d9dfb0ed8b70ef6b5a44775775533"
    end
  end

  def install
    bin.install "nssh"
  end

  test do
    system "#{bin}/nssh", "-V"
  end
end
