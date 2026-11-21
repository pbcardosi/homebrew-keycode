class Keycode < Formula
  desc "Free, local-first, bring-your-own-key coding agent"
  homepage "https://github.com/pbcardosi/keycode"
  url "https://registry.npmjs.org/keycode-ai/-/keycode-ai-0.1.3.tgz"
  sha256 "c0d46f45a0aac58f0a7e133644f2fd746c6e50fb11e481b145b42121298ae1dc"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "0.1.3", shell_output("#{bin}/keycode --version")
  end
end
