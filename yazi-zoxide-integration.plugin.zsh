# adds a 'y' function to zsh that opens yazi at the current directory without any input of at a directory suggested by zoxide if a input is given. Exiting yazi chnages the current working directory  to one that was open in yazi.

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	local target_dir=""

	# Resolve the input argument if provide)
	if [ -n "$1" ]; then
		if [ -d "$1" ]; then
			target_dir="$1"
		else
			# Query zoxide with a fallback to yazi
			target_dir=$(zoxide query "$1" 2>/dev/null) || target_dir="$1"
		fi
	fi

	command yazi "$target_dir" --cwd-file="$tmp"

	# Read the final directory Yazi was in upon quitting and cd to it
	IFS= read -r -d '' cwd < "$tmp"
	if [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && [ -d "$cwd" ]; then
		builtin cd -- "$cwd"
	fi

	command rm -f -- "$tmp"
}
