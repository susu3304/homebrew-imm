class Imm < Formula
  desc "Insane Marmot Matrix native runtime"
  homepage "https://github.com/susu3304/IMM"
  version "0.2.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/susu3304/IMM/releases/download/v0.2.1/imm-macos-arm64.tar.gz"
      sha256 "9fdaad24bba75fa69a0460e8abfa14e398b7dcab19e8d5cc0c8afd65e393d015"
    else
      url "https://github.com/susu3304/IMM/releases/download/v0.2.1/imm-macos-x64.tar.gz"
      sha256 "5f769899aba0176637a2ae0f71b4b8e3bcf8136943d34d8a3711329e6c3457a2"
    end
  end

  def install
    bin.install "imm/bin/imm"
  end

  test do
    assert_match "insane marmot matrix native", shell_output("#{bin}/imm --version")
  end
end
