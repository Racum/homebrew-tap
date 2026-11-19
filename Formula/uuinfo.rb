class Uuinfo < Formula
  desc "Tool to debug unique identifiers (UUID, ULID, Snowflake, etc)"
  homepage "https://github.com/racum/uuinfo"
  version "0.8.0"

  on_macos do
    url "https://github.com/racum/uuinfo/releases/download/v#{version}/uuinfo-macos-v#{version}.tar.gz"
    sha256 "fadda574932ac94e37c11bf1d058a4cdf28c6eaf5de5cad49d6e8c850272b3ac"
  end

  def install
    bin.install "uuinfo"
  end

  test do
    assert_match "Nil UUID", shell_output("#{bin}/uuinfo -o short 00000000-0000-0000-0000-000000000000")
  end
end