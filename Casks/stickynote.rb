cask "stickynote" do
  version "1.0"
  sha256 "c5a7e570bc876deef42a79780d33f26f34c2f00c3c762dcf108591f86c7a430a"

  url "https://github.com/MMeraz21/StickyNote/releases/download/v#{version}/StickyNote-v#{version}.zip"
  name "StickyNote"
  desc "Minimal menu bar sticky note app"
  homepage "https://github.com/MMeraz21/StickyNote"

  depends_on macos: ">= :sonoma"

  app "StickyNote.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/StickyNote.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.local.StickyNote.plist",
  ]
end
