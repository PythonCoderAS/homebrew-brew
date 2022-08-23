require "language/node"

class GhAllRepos < Formula
  desc "Do anything on all repos that belong to a user/org"
  homepage "https://github.com/PythonCoderAS/gh-all-repos#readme"
  url "https://registry.npmjs.org/gh-all-repos/-/gh-all-repos-1.1.0.tgz"
  sha256 "9c8f55c46f18ab507c9a634b83aa129fcd176a52a6754453c7fe4afb801e4241"
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
