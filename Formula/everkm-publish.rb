class EverkmPublish < Formula
  desc "Everkm Publish CLI"
  homepage "https://github.com/everkm/publish"
  version "0.17.4"

  on_macos do
    url "https://github.com/everkm/publish/releases/download/everkm-publish%40v0.17.4/EverkmPublish_0.17.4_darwin-universal.zip"
    sha256 "042099090f0f515d2641e2ec925fad6f08e99d4e99ba8b01a2c40b683183368e"
  end

  on_linux do
    url "https://github.com/everkm/publish/releases/download/everkm-publish%40v0.17.4/EverkmPublish_0.17.4_linux-amd64.zip"
    sha256 "574be2d207aaff168a73ac2236dd3367c864329182de21bf852bff7eed227775"
  end

  def install
    src = Dir["**/everkm-publish"].find { |f| File.file?(f) }
    src ||= Dir["**/everkm-publish.bin"].find { |f| File.file?(f) }
    odie "everkm-publish binary not found in archive" unless src
    bin.install src => "everkm-publish"
  end

  test do
    system "#{bin}/everkm-publish", "--version"
  end
end
