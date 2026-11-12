cask "flick" do
  version "0.1.2"
  sha256 "d37212954425796e2f4e8cb75f856c3aa2629d4e8966228f4b6bfdf6451a6499"

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
