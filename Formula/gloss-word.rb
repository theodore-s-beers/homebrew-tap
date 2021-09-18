class GlossWord < Formula
  desc "English dictionary lookup utility"
  homepage "https://github.com/theodore-s-beers/gloss-word"
  url "https://github.com/theodore-s-beers/gloss-word/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "0530365b54e1db118245a6826b01b0896385b4646fbb079b7bf6ebb14b32f91b"
  license "MIT"

  bottle do
    root_url "https://github.com/theodore-s-beers/homebrew-tap/releases/download/gloss-word-0.1.5"
    sha256 cellar: :any_skip_relocation, catalina: "ceed7c83fdc5625d336915c45fb8f34a3f362428ee2c56d2f149f1bc1ce955d9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "gloss-word 0.", shell_output("#{bin}/gloss --version")
  end
end
