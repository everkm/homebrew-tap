class EverkmPublish < Formula
  desc "Everkm Publish CLI"
  homepage "https://github.com/everkm/publish"
  version "0.17.5"

  on_macos do
    url "https://github.com/everkm/publish/releases/download/everkm-publish%40v0.17.5/EverkmPublish_0.17.5_darwin-universal.zip"
    sha256 "5ff6f7bc99963088d84c6b6621943f8cc049ff714909ad59e80f9e10afaaca7b"
  end

  on_linux do
    url "https://github.com/everkm/publish/releases/download/everkm-publish%40v0.17.5/EverkmPublish_0.17.5_linux-amd64.zip"
    sha256 "19d3901ae722c4ffee378ab5629f39ae36c4454ed3aeab3c6592a69866fd77b3"
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
