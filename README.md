# Homebrew tap for tpdf

[tpdf](https://github.com/tstone-1/tpdf) is a fast PDF viewer and editor for macOS and Windows.

## Install

```
brew install --cask tstone-1/tpdf/tpdf
```

That is the short form. The expanded version is:

```
brew tap tstone-1/tpdf
brew install --cask tpdf
```

tpdf is signed with a Developer ID certificate and notarized by Apple, so it opens without an `xattr` step. The build is for Apple Silicon.

## Update

tpdf updates itself. `brew upgrade --cask tpdf` also works, and the cask is marked `auto_updates`, so the two do not fight.

## Uninstall

```
brew uninstall --cask tpdf             # remove the app
brew uninstall --cask --zap tpdf       # also delete its settings and caches
```

## The command-line tool

The app contains `tpdf-cli`. Choose **Install command-line tool…** in tpdf to link it as `tpdf` and `tpdf-cli` in `/usr/local/bin`.
