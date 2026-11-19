class Sfogliatrice < Formula
  desc "CLI tool to tessellate GeoJSON geometries into satellite survey targets and coverages"
  homepage "https://github.com/racum/sfogliatrice"
  version "0.6.2"

  on_macos do
    url "https://github.com/racum/sfogliatrice/releases/download/v#{version}/sfogliatrice-macos-v#{version}.tar.gz"
    sha256 "198ff18a86c350b9dbed42fb517cc605f6830ad83e6133e28ade987c91109624"
  end

  def install
    bin.install "sfogliatrice"
  end

  test do
    assert_match "sfogliatrice", shell_output("#{bin}/sfogliatrice --version")
  end
end
