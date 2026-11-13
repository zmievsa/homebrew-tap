cask "flick" do
  version "0.4.0"
  sha256 "f91f8ea2640b823f437cb02bc878561e163c38dd4f7c59e8adc9b0a67368e38a"

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
