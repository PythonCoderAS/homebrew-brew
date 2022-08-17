require "language/node"

class GhAllRepos < Formula
  desc "Do anything on all repos that belong to a user/org"
  homepage "https://github.com/PythonCoderAS/gh-all-repos#readme"
  url "https://registry.npmjs.org/gh-all-repos/-/gh-all-repos-1.0.1.tgz"
  sha256 "8009846230ded68efc3b82f05065ba7183154cbd23ec2514cd765f5df73a4b30"
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
