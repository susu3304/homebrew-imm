class Imm < Formula
  desc "Insane Marmot Matrix native runtime"
  homepage "https://github.com/susu3304/InsaneMarmotMatrixLanguage"
  version "0.2.1+git16.a6db498c2cd1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/susu3304/imm-installers/releases/download/imm-v0.2.1-git16-a6db498c2cd1/imm-macos-arm64.tar.gz"
      sha256 "3ccb09f5fc6748daad78dd6468a043d8f73f2828d1f751d5b96d1b3be874295a"
    else
      url "https://github.com/susu3304/imm-installers/releases/download/imm-v0.2.1-git16-a6db498c2cd1/imm-macos-x64.tar.gz"
      sha256 "cd1b130ed091c2c00dc046657d4316ab78956dc3bd74e0a925ea1fd148242f5e"
    end
  end

  def install
    bin.install "bin/imm"
  end

  test do
    assert_match "insane marmot matrix native", shell_output("#{bin}/imm --version")
  end
end
