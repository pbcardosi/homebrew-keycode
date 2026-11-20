class Keycode < Formula
  desc "Free, local-first, bring-your-own-key coding agent"
  homepage "https://github.com/pbcardosi/keycode"
  url "https://registry.npmjs.org/keycode-ai/-/keycode-ai-0.1.1.tgz"
  sha256 "ac2d25bf22cc78c0c8e67a8f87c263538b96fd1df6510d41e9571c2453beede9"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/keycode --version")
  end
end
