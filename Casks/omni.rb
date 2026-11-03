cask "omni" do
  version "0.23.0"
  sha256 "69d7dd1f8ba687e01ef0698e14563ad5f89f6f5011fab2eb1a763003393f2c2b"

  url "https://www.getomni.space/downloads/Omni_#{version}_aarch64.dmg"
  name "Omni"
  desc "Email triage, drafted replies and one note beside Apple Mail"
  homepage "https://www.getomni.space/"

  livecheck do
    url "https://www.getomni.space/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Omni.app"
end
