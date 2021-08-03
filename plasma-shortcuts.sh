#!/bin/bash
# Clear all task manager entries hotkey
for i in {1..9}; do
	kwriteconfig5 --file kglobalshortcutsrc --group plasmashell --key "activate task manager entry $i" "none,none,Activate Task Manager Entry $i";
done;

# Assign change to desktop shortcuts
for i in {1..9}; do
	kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Switch to Desktop $i" "Meta+$i,none,Switch to Desktop $i";
done;

# Assign move widnow to desktop shortcut
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window to Desktop 1" "Meta+\!,none,Window to Desktop 1";
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window to Desktop 2" "Meta+\@,none,Window to Desktop 2";
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window to Desktop 3" "Meta+\#,none,Window to Desktop 3";
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window to Desktop 4" "Meta+\$,none,Window to Desktop 4";
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window to Desktop 5" "Meta+\%,none,Window to Desktop 5";
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window to Desktop 6" "Meta+\^,none,Window to Desktop 6";
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window to Desktop 7" "Meta+\&,none,Window to Desktop 7";
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window to Desktop 8" "Meta+\*,none,Window to Desktop 8";
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window to Desktop 9" "Meta+\(,none,Window to Desktop 9";

# Close window with Meta+W
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window Close" "Meta+W\tAlt+F4,Alt+F4,Close Window";

# Change number of desktops and disable
kwriteconfig5 --file kwinrc --group Desktops --key Number 8;
kwriteconfig5 --file kwinrc --group Desktops --key Rows 2;

# Keep Window on all desktops shortcut
kwriteconfig5 --file kglobalshortcutsrc --group kwin --key "Window On All Desktops" "Meta+A,none,Keep Window on All Desktops";

# Disable animation
kwriteconfig5 --file kwinrc --group Plugins --key slideEnabled --type bool false;
