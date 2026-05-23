class Imm < Formula
  desc "Insane Marmot Matrix native runtime"
  homepage "https://github.com/susu3304/InsaneMarmotMatrixLanguage"
  version "0.2.0+git15.12426bf7326a"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/susu3304/imm-installers/releases/download/imm-v0.2.0-git15-12426bf7326a/imm-macos-arm64.tar.gz"
      sha256 "bb76a4e6f81a7422735f42a36d1269b4256eee9b208defdc1e6a9f14ffd3ce42"
    else
      url "https://github.com/susu3304/imm-installers/releases/download/imm-v0.2.0-git15-12426bf7326a/imm-macos-x64.tar.gz"
      sha256 "e7ea1344d0fb02c30a4c8b9037d96655733ec0437517ec3955a02f164866715d"
    end
  end

  def install
    bin.install "bin/imm"
  end

  test do
    assert_match "insane marmot matrix native", shell_output("#{bin}/imm --version")
  end
end
