require "language/node"

class GithubWatchAllRepos < Formula
  desc "Watch all repositories belonging to an individual user/organization"
  homepage "https://github.com/PythonCoderAS/github-watch-all-repos#readme"
  url "https://registry.npmjs.org/github-watch-all-repos/-/github-watch-all-repos-1.0.3.tgz"
  sha256 "9d9e50506282633f1bf70dce6d5c693dde03d727243ddd0d9a58496298b05f7d"
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
