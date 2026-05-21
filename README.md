# coPetence Homebrew Tap

The official [Homebrew](https://brew.sh) tap for coPetence GmbH macOS apps.

## Install

```sh
brew tap coPetence/tap
brew install --cask copetence-time
```

The tap is public — no GitHub account or authentication needed.

## Casks

| Cask             | Description                                                              |
| ---------------- | ------------------------------------------------------------------------ |
| `copetence-time` | Menu bar helper + Stream Deck integration for the coPetence time tracker |

## Updating

`brew upgrade` is a no-op for these casks — they set `auto_updates true` so Sparkle manages updates from within the app.
