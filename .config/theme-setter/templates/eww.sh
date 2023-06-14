palette=("${@}")

dest_dir="$HOME/.config/eww/"
dest_file="colors.scss"

[[ -d "$dest_dir" ]] || mkdir -pv "$dest_dir"

output="$(cat << THEME
\$background: #${palette[0]};
\$foreground: #${palette[1]};
\$black: #${palette[2]};
\$white: #${palette[3]};
\$red: #${palette[4]};
\$green: #${palette[5]};
\$yellow: #${palette[6]};
\$blue: #${palette[7]};
\$magenta: #${palette[8]};
\$cyan: #${palette[9]};
\$orange: #${palette[10]};
\$gray: #${palette[11]};
THEME
)"

printf '%s' "$output" > "${dest_dir}${dest_file}"
