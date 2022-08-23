require "language/node"

class GhAllRepos < Formula
  desc "Do anything on all repos that belong to a user/org"
  homepage "https://github.com/PythonCoderAS/gh-all-repos#readme"
  url "https://registry.npmjs.org/gh-all-repos/-/gh-all-repos-1.1.1.tgz"
  sha256 "f6f40ea7d169243adf2c9982edfce8bcb84993103bfd38cc81de2f9e9e47ecd8"
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
