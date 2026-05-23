class Imm < Formula
  desc "Insane Marmot Matrix native runtime"
  homepage "https://github.com/susu3304/InsaneMarmotMatrixLanguage"
  version "0.1.0+git14.7c8d605faabb"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/susu3304/imm-installers/releases/download/imm-v0.1.0-git14-7c8d605faabb/imm-macos-arm64.tar.gz"
      sha256 "08f172502350e86e7257a90bcdb1fe42bd8f64dc237a8c60fe422a3ad8414767"
    else
      url "https://github.com/susu3304/imm-installers/releases/download/imm-v0.1.0-git14-7c8d605faabb/imm-macos-x64.tar.gz"
      sha256 "118d6b718fc8457a9a9c374381f2816d6b86f4535568a05d5ce3c9f543b42921"
    end
  end

  def install
    bin.install "bin/imm"
  end

  test do
    assert_match "insane marmot matrix native", shell_output("#{bin}/imm --version")
  end
end
