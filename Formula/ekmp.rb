# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ekmp < Formula
  desc ""
  homepage ""
  url "https://github.com/everkm/publish/releases/download/everkm-publish%40v0.10.2/EverkmPublish_0.10.2_darwin-universal.tar.gz"
  sha256 "4b67a19735c9115ebbed19f2c08c2e8bb1f6f136b512dbd8244285d55bea120e"
  license "ISC"

  # depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # system "go", "build", *std_go_args(ldflags: "-s -w")
    bin.install "everkm-publish"
  end

  # test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ekmp`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    # system "false"
  # end
end
