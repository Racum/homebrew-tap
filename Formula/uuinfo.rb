class Uuinfo < Formula
  desc "Tool to debug unique identifiers (UUID, ULID, Snowflake, etc)"
  homepage "https://github.com/racum/uuinfo"
  version "0.7.4"

  on_macos do
    url "https://github.com/racum/uuinfo/releases/download/v#{version}/uuinfo-macos-v#{version}.tar.gz"
    sha256 "6d83690210dcdc0df3aeb76378680fc3b9974a4135332d3c7d4ef8268a8195b1"
  end

  def install
    bin.install "uuinfo"
  end

  test do
    assert_match "Nil UUID", shell_output("#{bin}/uuinfo -o short 00000000-0000-0000-0000-000000000000")
  end
end