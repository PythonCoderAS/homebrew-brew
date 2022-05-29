require "language/node"

class GithubListAllPrs < Formula
  desc "List all PRs in all repositories belonging to an individual user/organization"
  homepage "https://github.com/PythonCoderAS/github-list-all-prs#readme"
  url "https://registry.npmjs.org/github-list-all-prs/-/github-list-all-prs-1.0.1.tgz"
  sha256 "b04b352900489b57a072b7919c9e66daf08e292f16b66d7aa3f00b9de273cfef"
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
