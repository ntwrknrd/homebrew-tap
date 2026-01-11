class Nssh < Formula
  desc "SSH wrapper with credential management and session recording"
  homepage "https://github.com/ntwrknrd/nssh"
  license "GPL-3.0-only"
  version "0.2.4"

  on_macos do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.4/nssh_0.2.4_darwin_amd64.tar.gz"
      sha256 "18d5a6a1f3c2024d47a6871ff73da49357210007fe81d8689a87d120668cbb88"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.4/nssh_0.2.4_darwin_arm64.tar.gz"
      sha256 "2b474d25626861408e1800060b23ffe9837669a6e638cfff22d6b03eb61d39d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.4/nssh_0.2.4_linux_amd64.tar.gz"
      sha256 "45584162f8dde1628476e163420db80cef831248237e111a312be42270429566"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.4/nssh_0.2.4_linux_arm64.tar.gz"
      sha256 "49a532ef864820c7546a125e863e7b65ad03e718f0bcdd0ed06ca906ece39824"
    end
  end

  def install
    bin.install "nssh"
  end

  test do
    system "#{bin}/nssh", "-V"
  end
end
