cask "omni" do
  version "0.21.0"
  sha256 "9b72ee39b28e57f01aeb35bc9de392eed3bd5528cc1e3fa7f7aee4cdf73ef779"

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
