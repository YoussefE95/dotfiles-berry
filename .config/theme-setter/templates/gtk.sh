xsettingsd_dir="$HOME/.config/xsettingsd/"
xsettingsd_file="xsettingsd.conf"
xsettingsd_output="$(cat << THEME
Net/IconThemeName "$1"
Gtk/CursorThemeName "Capitaine-Cursors-Gruvbox-White"
Net/ThemeName "$3"
THEME
)"
# Gtk/CursorThemeName "$2"
printf '%s' "$xsettingsd_output" > "${xsettingsd_dir}${xsettingsd_file}"

xsettingsd &

# sed -i "s/.*Xcursor.theme.*/Xcursor.theme: $2/g" ~/.Xresources
# xrdb $HOME/.Xresources