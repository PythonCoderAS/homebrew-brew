require "language/node"

class GithubRunScript < Formula
  desc "Run a script on multiple repositories, cloning them if needed"
  homepage "https://github.com/PythonCoderAS/github-run-script#readme"
  url "https://registry.npmjs.org/github-run-script/-/github-run-script-1.1.0.tgz"
  sha256 "5bd570e9f8806452c14aa72a7a3569926cb716303805dae573d092a199bee9bf"
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
