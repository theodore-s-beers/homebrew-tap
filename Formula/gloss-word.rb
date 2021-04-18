class GlossWord < Formula
  desc "English dictionary lookup utility"
  homepage "https://github.com/theodore-s-beers/gloss-word"
  url "https://github.com/theodore-s-beers/gloss-word/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6df207e7057934b27f03acb355c68b5571b907e7ddfae1f359a72bb72bbb793a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match /gloss-word 0\.1\.0/, shell_output("#{bin}/gloss --version")
  end
end
