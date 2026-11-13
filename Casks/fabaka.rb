cask "fabaka" do
  version "0.6.0"
  sha256 "7d867345b44cce8d3c54698c4faf88e83d9da09d10b0aa75644c6fd37b391ebb"

  url "https://github.com/zmievsa/fabaka/releases/download/v#{version}/Fabaka-#{version}.zip"
  name "Fabaka"
  desc "Command-Tab window switcher without screen capture"
  homepage "https://github.com/zmievsa/fabaka"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Fabaka.app"

  uninstall quit: "com.zmievsa.fabaka"

  caveats <<~EOS
    Open Fabaka once and grant it Accessibility. It then starts at login.
    Open it again any time for Settings.
  EOS
end
