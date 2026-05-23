class Imm < Formula
  desc "Insane Marmot Matrix native runtime"
  homepage "https://github.com/susu3304/InsaneMarmotMatrixLanguage"
  version "0.1.0+git13.95018fc9d4df"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/susu3304/imm-installers/releases/download/imm-v0.1.0-git13-95018fc9d4df/imm-macos-arm64.tar.gz"
      sha256 "faa04653f07e12b7aa78c3a2f88eb7278af85e032457ed31fe10459553002799"
    else
      url "https://github.com/susu3304/imm-installers/releases/download/imm-v0.1.0-git13-95018fc9d4df/imm-macos-x64.tar.gz"
      sha256 "59dcd43e06f56219e5bd303c275b7053632acdc67edf15b39d3a60aaf9e79ff9"
    end
  end

  def install
    bin.install "bin/imm"
  end

  test do
    assert_match "insane marmot matrix native", shell_output("#{bin}/imm --version")
  end
end
