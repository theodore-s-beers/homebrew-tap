class GlossWord < Formula
  desc "English dictionary lookup utility"
  homepage "https://github.com/theodore-s-beers/gloss-word"
  url "https://github.com/theodore-s-beers/gloss-word/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "f7431229b8f524f48f56f4a9327f2f4896356231fa0f7ff1886cd85a6f2a9b85"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "gloss-word 0.", shell_output("#{bin}/gloss --version")
  end
end
