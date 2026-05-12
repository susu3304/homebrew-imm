class Imm < Formula
  desc "Insane Marmot Matrix native runtime"
  homepage "https://github.com/susu3304/InsaneMarmotMatrixLanguage"
  version "0.1.0+git13.95018fc9d4df"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/susu3304/imm-installers/releases/download/imm-v0.1.0-git13-95018fc9d4df/imm-macos-arm64.tar.gz"
      sha256 "6075af8544d3edacae97c938b7b55b60543d9ac065b66f4866596789b21885b9"
    else
      url "https://github.com/susu3304/imm-installers/releases/download/imm-v0.1.0-git13-95018fc9d4df/imm-macos-x64.tar.gz"
      sha256 "3364327bd9286145d579597958cb008bf40bed4814c0f9296e1e7f06f6b85074"
    end
  end

  def install
    bin.install "bin/imm"
  end

  test do
    assert_match "insane marmot matrix native", shell_output("#{bin}/imm --version")
  end
end
