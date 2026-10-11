cask "omni" do
  version "0.5.1"
  sha256 "c46b09db2e489a08efc1cf8ad2d26a0d73bcf274bc6c4d76af065f49fc322b83"

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
