@test "Exec command is properly extracted from Firefox desktop file" {
  run ../sway-launcher-desktop.sh generate-command data/desktop-files/0/applications/firefox.desktop
  [ "$status" -eq 0 ]
  [[ "$output" ==  '/usr/lib/firefox/firefox' ]]
}

@test "Exec command is properly generated from htop desktop file" {
  run ../sway-launcher-desktop.sh generate-command data/desktop-files/0/applications/htop.desktop
  [ "$status" -eq 0 ]
  [[ "$output" ==  'urxvt -e htop' ]]
}

@test "Exec command is properly generated from minecraft-launcher desktop file" {
  run ../sway-launcher-desktop.sh generate-command data/desktop-files/0/applications/minecraft-launcher.desktop
  [ "$status" -eq 0 ]
  [[ "$output" ==  'cd /opt/minecraft-launcher/ && env GDK_BACKEND=x11 /opt/minecraft-launcher/minecraft-launcher' ]]
}