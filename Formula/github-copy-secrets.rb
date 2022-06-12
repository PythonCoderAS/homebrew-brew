require "language/node"

class GithubCopySecrets < Formula
  desc "Copy given secrets to a repository"
  homepage "https://github.com/PythonCoderAS/github-copy-secrets#readme"
  url "https://registry.npmjs.org/github-copy-secrets/-/github-copy-secrets-1.0.2.tgz"
  sha256 "325047d9065335565b32ea7190578aa034e2a46f13a3af2093329971b436da56"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
