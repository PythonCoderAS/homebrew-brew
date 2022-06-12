require "language/node"

class GithubRunScript < Formula
  desc "Run a script on multiple repositories, cloning them if needed"
  homepage "https://github.com/PythonCoderAS/github-run-script#readme"
  url "https://registry.npmjs.org/github-run-script/-/github-run-script-1.0.0.tgz"
  sha256 "d6641262d23d3f67c1f1c041e1476c74d441a5127834b097a2f766ce9e6acb6c"
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
