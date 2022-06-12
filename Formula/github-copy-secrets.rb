require "language/node"

class GithubCopySecrets < Formula
  desc "Copy given secrets to a repository"
  homepage "https://github.com/PythonCoderAS/github-copy-secrets#readme"
  url "https://registry.npmjs.org/github-copy-secrets/-/github-copy-secrets-1.0.1.tgz"
  sha256 "a6a61b28c2a1669f340263ac083704036feec311fe589772620144d20a9edfbe"
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
