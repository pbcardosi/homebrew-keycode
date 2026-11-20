class Keycode < Formula
  desc "Free, local-first, bring-your-own-key coding agent"
  homepage "https://github.com/pbcardosi/keycode"
  url "https://registry.npmjs.org/keycode-ai/-/keycode-ai-0.1.0.tgz"
  sha256 "55df83427f85680b914b0a617218373868492f6b196e42c705b93f9876c26285"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/keycode --version")
  end
end
