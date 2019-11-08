require "language/node"

class SpeedTest < Formula
  desc "Test your internet connection speed and ping using speedtest.net from the CLI"
  homepage "https://github.com/sindresorhus/speed-test"
  url "https://registry.npmjs.org/speed-test/-/speed-test-2.1.0.tgz"
  version "2.1.0"
  sha256 "b27879eb3557095bd3c43915d6eb88241548bea69e5a1a1bdf0527971ff469ac"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
