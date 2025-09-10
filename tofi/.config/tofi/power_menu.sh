#!/bin/zsh

# Define menu options (text displayed in Tofi)
OPTIONS="Shutdown\nLogout\nReboot\nLock\nHibernate\nSuspend"

# Run Tofi with options and keybinds
CHOICE=$(echo -e "$OPTIONS" | tofi -c ~/.config/tofi/tofi.conf --prompt-text=" " --fuzzy-match=true)

# Exit if no choice was made (e.g., Esc pressed)
[ -z "$CHOICE" ] && exit 0

# Map selected option to its action
case "$CHOICE" in
    "Shutdown")
        systemctl poweroff
        ;;
    "Logout")
        hyprctl dispatch exit
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Lock")
        hyprlock
        ;;
    "Hibernate")
        systemctl hibernate
        ;;
    "Suspend")
        systemctl suspend
        ;;
    *)
        exit 1
        ;;
esac
