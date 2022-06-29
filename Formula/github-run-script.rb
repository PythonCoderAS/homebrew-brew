require "language/node"

class GithubRunScript < Formula
  desc "Run a script on multiple repositories, cloning them if needed"
  homepage "https://github.com/PythonCoderAS/github-run-script#readme"
  url "https://registry.npmjs.org/github-run-script/-/github-run-script-1.1.1.tgz"
  sha256 "da52ad78d8fbe49069137b5dfad904bf39bc734b323dde4fa0c67a4d9f286125"
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
