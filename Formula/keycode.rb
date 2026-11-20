class Keycode < Formula
  desc "Free, local-first, bring-your-own-key coding agent"
  homepage "https://github.com/pbcardosi/keycode"
  url "https://registry.npmjs.org/keycode-ai/-/keycode-ai-0.1.2.tgz"
  sha256 "04d5a24572294352524dbcfaffb7a32a8150afa44e302447d41ff7d921df550b"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/keycode --version")
  end
end
