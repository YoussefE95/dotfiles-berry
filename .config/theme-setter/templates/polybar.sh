palette=("${@}")

dest_dir="$HOME/.config/polybar/"
dest_file="colors"

[[ -d "$dest_dir" ]] || mkdir -pv "$dest_dir"

output="$(cat << THEME
## Copyright (C) 2020-2023 Aditya Shakya <adi1090x@gmail.com>

;; _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_

[color]
BG = #${palette[0]}
FG = #${palette[1]}

red = #${palette[4]}
green = #${palette[5]}
yellow = #${palette[6]}
blue = #${palette[7]}
magenta = #${palette[8]}
cyan = #${palette[9]}
orange = #${palette[10]}
gray = #${palette[11]}
;; _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
THEME
)"

printf '%s' "$output" > "${dest_dir}${dest_file}"

sh "$dest_dir/launch.sh"
