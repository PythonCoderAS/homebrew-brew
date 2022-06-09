require "language/node"

class GithubCopySecrets < Formula
  desc "Copy given secrets to a repository"
  homepage "https://github.com/PythonCoderAS/github-copy-secrets#readme"
  url "https://registry.npmjs.org/github-copy-secrets/-/github-copy-secrets-1.0.0.tgz"
  sha256 "9a8eed4268e797f459df97a30d040b983f18548c8bac81072b50a25686d4e9c9"
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
