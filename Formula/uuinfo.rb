class Uuinfo < Formula
  desc "Tool to debug unique identifiers (UUID, ULID, Snowflake, etc)"
  homepage "https://github.com/racum/uuinfo"
  version "0.7.5"

  on_macos do
    url "https://github.com/racum/uuinfo/releases/download/v#{version}/uuinfo-macos-v#{version}.tar.gz"
    sha256 "49b2d7d377f52a89510f260d99e27f2db9ecfc74a16fd112df9e45f084594e01"
  end

  def install
    bin.install "uuinfo"
  end

  test do
    assert_match "Nil UUID", shell_output("#{bin}/uuinfo -o short 00000000-0000-0000-0000-000000000000")
  end
end