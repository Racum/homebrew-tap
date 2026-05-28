class Sfogliatrice < Formula
  desc "CLI tool to tessellate GeoJSON geometries into satellite survey targets and coverages"
  homepage "https://github.com/racum/sfogliatrice"
  version "0.6.1"

  on_macos do
    url "https://github.com/racum/sfogliatrice/releases/download/v#{version}/sfogliatrice-macos-v#{version}.tar.gz"
    sha256 "0e41210d6944ffc328eef135533f076a967eb84026dbd5392765d49c51f8ec86"
  end

  def install
    bin.install "sfogliatrice"
  end

  test do
    assert_match "sfogliatrice", shell_output("#{bin}/sfogliatrice --version")
  end
end
