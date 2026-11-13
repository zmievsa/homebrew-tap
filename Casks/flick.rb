cask "flick" do
  version "0.5.0"
  sha256 "7ad936139e5ee470ac486e60676b44d0ec6021b0f6bf2e64c96799d0df025567"

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
