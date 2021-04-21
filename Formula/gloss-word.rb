class GlossWord < Formula
  desc "English dictionary lookup utility"
  homepage "https://github.com/theodore-s-beers/gloss-word"
  url "https://github.com/theodore-s-beers/gloss-word/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "89406aca18e7e22346097ebe7d916e06c0bb03cc261d1e00209e25f9f7d70668"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "gloss-word 0.", shell_output("#{bin}/gloss --version")
  end
end
