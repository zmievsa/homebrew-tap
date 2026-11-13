cask "flick" do
  version "0.2.0"
  sha256 "6502fa731298c2adc57673214e1cda646b2898a3816b2676625a8e0c792cfa97"

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
