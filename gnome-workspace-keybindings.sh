for i in {1..9}; do gsettings set org.gnome.shell.keybindings switch-to-application-5 '[]'; done;
for i in {1..9}; do gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-$i \[\"\<Super\>$i\"\]; done;
