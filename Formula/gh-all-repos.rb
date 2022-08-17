require "language/node"

class GhAllRepos < Formula
  desc "Do anything on all repos that belong to a user/org"
  homepage "https://github.com/PythonCoderAS/gh-all-repos#readme"
  url "https://registry.npmjs.org/gh-all-repos/-/gh-all-repos-1.0.0.tgz"
  sha256 "97c1a634911d403d5932d6d546043461b02dfd56996787d5fb11eefe4c28a280"
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
