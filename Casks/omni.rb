cask "omni" do
  version "0.19.0"
  sha256 "eff38555d5f7ef7fc245d09ca32b29b89f5103f944b288f82a1b35533d2f0697"

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
