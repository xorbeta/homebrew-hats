# Homebrew tap for Hats

```sh
brew tap xorbeta/hats
brew trust xorbeta/hats      # recent Homebrew asks you to trust third-party taps
brew install --cask hats
```

Hats is a macOS menu bar app that switches every layer of your GitHub
identity at once. Website: https://usehats.app

The cask downloads the notarized DMG from https://usehats.app/download/ and
verifies its sha256.
