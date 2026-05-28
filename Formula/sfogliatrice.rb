class Sfogliatrice < Formula
  desc "CLI tool to tessellate GeoJSON geometries into satellite survey targets and coverages"
  homepage "https://github.com/racum/sfogliatrice"
  version "0.6.1"

  on_macos do
    url "https://github.com/racum/sfogliatrice/releases/download/v#{version}/sfogliatrice-macos-v#{version}.tar.gz"
    sha256 "PLACEHOLDER_UPDATED_BY_CI"
  end

  def install
    bin.install "sfogliatrice"
  end

  test do
    assert_match "sfogliatrice", shell_output("#{bin}/sfogliatrice --version")
  end
end
