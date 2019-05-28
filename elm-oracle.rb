require "language/node"

class ElmOracle < Formula
  desc "Query for information about values in elm source files"
  homepage "https://github.com/ElmCast/elm-oracle#readme"
  url "https://registry.npmjs.org/elm-oracle/-/elm-oracle-1.1.1.tgz"
  version "1.1.1"
  sha256 "627ea0ef226f02ffbb3079f0c7c7cef33dc837700faa0d2a8d61141094a323c6"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end