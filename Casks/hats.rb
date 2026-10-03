# Homebrew cask for Hats, published in the xorbeta/homebrew-hats tap until
# the app qualifies for homebrew/cask. Update version + sha256 on each
# release (scripts/release.sh prints both).
cask "hats" do
  version "1.0.0"
  sha256 "72f2f11cc40e7fe6126c9852eb5552dbcb0d8649f7b334f9a529a54b08b55c8f"

  url "https://usehats.app/download/Hats-#{version}.dmg"
  name "Hats"
  desc "Menu bar app that switches every layer of your GitHub identity at once"
  homepage "https://usehats.app"

  depends_on macos: :sonoma

  app "Hats.app"
  binary "#{appdir}/Hats.app/Contents/Helpers/hats"

  uninstall quit: "com.indigate.hats"

  zap trash: [
    "~/.config/hats",
    "~/Library/Preferences/com.indigate.hats.plist",
  ]

  caveats <<~EOS
    Hats manages ~/.gitconfig through an include block. Run `hats uninstall`
    before removing the app to cleanly restore your git configuration.
  EOS
end
