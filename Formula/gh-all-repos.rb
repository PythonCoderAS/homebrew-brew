require "language/node"

class GhAllRepos < Formula
  desc "Do anything on all repos that belong to a user/org"
  homepage "https://github.com/PythonCoderAS/gh-all-repos#readme"
  url "https://registry.npmjs.org/gh-all-repos/-/gh-all-repos-1.1.2.tgz"
  sha256 "b4e9bdc176cfe9901abd21ed073486a380ca5f3b651f5dbb31f9edc813fcd826"
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
