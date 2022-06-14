require "language/node"

class GithubRunScript < Formula
  desc "Run a script on multiple repositories, cloning them if needed"
  homepage "https://github.com/PythonCoderAS/github-run-script#readme"
  url "https://registry.npmjs.org/github-run-script/-/github-run-script-1.0.4.tgz"
  sha256 "0f89dbafefeb8807a085ff79dfd838e59f72ac9048c4c41711bdb4cf01b26e1a"
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
