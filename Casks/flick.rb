cask "flick" do
  version "0.3.0"
  sha256 "52b06a5d2a425772b20337abe913925059bc08b0c5787b8ad6092b5bea4a59e6"

  url "https://github.com/zmievsa/flick/releases/download/v#{version}/Flick-#{version}.zip"
  name "Flick"
  desc "Command-Tab window switcher without screen capture"
  homepage "https://github.com/zmievsa/flick"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Flick.app"

  uninstall quit: "com.zmievsa.flick"

  caveats <<~EOS
    Open Flick once and grant it Accessibility. It then starts at login.
  EOS
end
