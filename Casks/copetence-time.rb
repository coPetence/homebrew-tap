# Homebrew Cask for the coPetence Time macOS helper.
#
# This file is the source of truth; the public tap is coPetence/homebrew-tap.
# On each release, copy this file into the tap at `Casks/copetence-time.rb`
# with `version` and `sha256` updated, then push the tap. DMGs are GitHub
# Release assets on that same public repo (tag `copetence-time-<version>`).
#
# Install for end users (the tap is public — no GitHub account needed):
#   brew tap coPetence/tap
#   brew install --cask copetence-time
cask "copetence-time" do
  version "0.1.0"
  sha256 "REPLACE_WITH_DMG_SHA256"

  url "https://github.com/coPetence/homebrew-tap/releases/download/copetence-time-#{version}/coPetence-Time-#{version}.dmg"
  name "coPetence Time"
  desc "Menu bar helper + Stream Deck integration for the coPetence time tracker"
  homepage "https://time.copetence.de"

  # Sparkle handles in-app updates; `auto_updates true` stops `brew upgrade`
  # from fighting it.
  auto_updates true
  depends_on macos: ">= :ventura"

  app "CoPetenceTime.app"

  uninstall quit: "de.copetence.timer"

  zap trash: [
    "~/Library/Application Support/de.copetence.timer",
    "~/Library/Application Support/com.elgato.StreamDeck/Plugins/de.copetence.timer.sdPlugin",
    "~/Library/Caches/de.copetence.timer",
    "~/Library/Preferences/de.copetence.timer.plist",
  ]
end
