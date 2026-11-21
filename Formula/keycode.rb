class Keycode < Formula
  desc "Free, local-first, bring-your-own-key coding agent"
  homepage "https://github.com/pbcardosi/keycode"
  url "https://registry.npmjs.org/keycode-ai/-/keycode-ai-0.1.4.tgz"
  sha256 "39977770a21521eb69c9e0df55cea8911eef73607e068fd91b57de602a2c69bb"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "0.1.4", shell_output("#{bin}/keycode --version")
  end
end
