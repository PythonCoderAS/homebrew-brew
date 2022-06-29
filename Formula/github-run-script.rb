require "language/node"

class GithubRunScript < Formula
  desc "Run a script on multiple repositories, cloning them if needed"
  homepage "https://github.com/PythonCoderAS/github-run-script#readme"
  url "https://registry.npmjs.org/github-run-script/-/github-run-script-1.1.2.tgz"
  sha256 "09936f50edef6d49ab068d2fe4addd33490af39d73953c4f82bca5e2a13e6eac"
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
