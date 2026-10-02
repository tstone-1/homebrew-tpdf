cask "tpdf" do
  version "26.10.2"
  sha256 "89dd5bce3e3efd1e878c2308670702cea82293fab17edc578a57d3f413b1c2ee"

  url "https://github.com/tstone-1/tpdf/releases/download/v#{version}/tpdf_#{version}_aarch64.dmg"
  name "tpdf"
  desc "Fast PDF viewer and editor"
  homepage "https://github.com/tstone-1/tpdf"

  # tpdf updates itself (Tauri updater, signed payloads), so the installed app
  # can be newer than this cask's `version`. Without this, `brew upgrade` would
  # reinstall the cask version over a self-updated app.
  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "tpdf.app"

  zap trash: [
    "~/Library/Application Support/com.timostein.tpdf",
    "~/Library/Caches/com.timostein.tpdf",
    "~/Library/Preferences/com.timostein.tpdf.plist",
    "~/Library/Saved Application State/com.timostein.tpdf.savedState",
    "~/Library/WebKit/com.timostein.tpdf",
  ]
end
