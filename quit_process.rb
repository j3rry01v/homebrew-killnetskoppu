class QuitProcess < Formula
  desc "Script to kill Netskope processes"
  homepage "https://github.com/j3rry01v/killnetskoppu"
  url "https://github.com/j3rry01v/killnetskoppu/raw/main/quit_process.sh"
  sha256 "<SHA256_HASH_OF_YOUR_SCRIPT>"
  version "1.0.0"

  def install
    bin.install "quit_process.sh"
  end

  plist_options manual: "sudo #{HOMEBREW_PREFIX}/bin/quit_process.sh"

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
      <dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>Program</key>
        <string>#{opt_bin}/quit_process.sh</string>
        <key>RunAtLoad</key>
        <true/>
        <key>KeepAlive</key>
        <true/>
        <key>StandardErrorPath</key>
        <string>#{var}/log/quit_process.log</string>
        <key>StandardOutPath</key>
        <string>#{var}/log/quit_process.log</string>
      </dict>
      </plist>
    EOS
  end
end
