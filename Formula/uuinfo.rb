class Uuinfo < Formula
  desc "Tool to debug unique identifiers (UUID, ULID, Snowflake, etc)"
  homepage "https://github.com/racum/uuinfo"
  version "0.7.1"

  on_macos do
    url "https://github.com/racum/uuinfo/releases/download/v#{version}/uuinfo-macos-v#{version}.tar.gz"
    sha256 "PLACEHOLDER_UPDATED_BY_CI"
  end

  def install
    bin.install "uuinfo"
  end

  test do
    assert_match "Nil UUID", shell_output("#{bin}/uuinfo -o short 00000000-0000-0000-0000-000000000000")
  end
end