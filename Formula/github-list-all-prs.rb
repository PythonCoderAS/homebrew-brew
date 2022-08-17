require "language/node"

class GithubListAllPrs < Formula
  desc "List all PRs in all repositories belonging to an individual user/organization"
  homepage "https://github.com/PythonCoderAS/github-list-all-prs#readme"
  url "https://registry.npmjs.org/github-list-all-prs/-/github-list-all-prs-1.0.1.tgz"
  sha256 "b04b352900489b57a072b7919c9e66daf08e292f16b66d7aa3f00b9de273cfef"
  license "MIT"

  deprecate! date: "2022-08-17", because: :repo_archived

  livecheck do
    url :stable
  end

  depends_on "node"

  def install
    # Call rm -f instead of shx, because devDeps aren't present in Homebrew at postpack time
    inreplace "package.json", "shx rm -f oclif.manifest.json", "rm -f oclif.manifest.json"
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]

    # Replace universal binaries with their native slices
    deuniversalize_machos
  end

  test do
    raise "Test not implemented."
  end
end
