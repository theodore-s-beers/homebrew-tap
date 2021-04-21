class GlossWord < Formula
  desc "English dictionary lookup utility"
  homepage "https://github.com/theodore-s-beers/gloss-word"
  url "https://github.com/theodore-s-beers/gloss-word/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "89406aca18e7e22346097ebe7d916e06c0bb03cc261d1e00209e25f9f7d70668"
  license "MIT"

  bottle do
    root_url "https://github.com/theodore-s-beers/homebrew-tap/releases/download/gloss-word-0.1.1"
    sha256 cellar: :any_skip_relocation, catalina: "bb24e4e2f00686996c474814439396025a204ea6170b92dee3d823f53942cd2d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "gloss-word 0.", shell_output("#{bin}/gloss --version")
  end
end
