cask "tpdf" do
  version "26.10.4"
  sha256 "2e853e5a79fb2a5722a3f9301b19cf1865c0646200515b0943c47c73429c4c0c"

  url "https://github.com/tstone-1/tpdf/releases/download/v#{version}/tpdf_#{version}_aarch64.dmg"
  name "tpdf"
  desc "Fast PDF viewer and editor"
  homepage "https://github.com/tstone-1/tpdf"

  # The repository also publishes its PDFium engine builds as prereleases,
  # tagged `pdfium-...`; the latest full release is the application.
  livecheck do
    url :url
    strategy :github_latest
  end

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
