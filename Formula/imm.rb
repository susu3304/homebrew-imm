class Imm < Formula
  desc "Insane Marmot Matrix native runtime"
  homepage "https://github.com/susu3304/InsaneMarmotMatrixLanguage"
  version "0.2.1+git16.a6db498c2cd1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/susu3304/imm-installers/releases/download/imm-v0.2.1-git16-a6db498c2cd1/imm-macos-arm64.tar.gz"
      sha256 "ee97c92505667dc8d4d438913b6f57c917201f60746a770b4da06928582d446d"
    else
      url "https://github.com/susu3304/imm-installers/releases/download/imm-v0.2.1-git16-a6db498c2cd1/imm-macos-x64.tar.gz"
      sha256 "373e1201eb75f0a576653aca5f95123a7ab38fc457af8b50c68ca60f9f88a0d0"
    end
  end

  def install
    bin.install "bin/imm"
  end

  test do
    assert_match "insane marmot matrix native", shell_output("#{bin}/imm --version")
  end
end
