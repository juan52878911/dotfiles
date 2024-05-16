show_ascciTitle() { # This function name must match the module name!
	local index icon color text module

	index=$1 # This variable is used internally by the module loader in order to know the position of this module
	icon="$(get_tmux_option "@catppuccin_ascciTitle_icon" "")"
	color="$(get_tmux_option "@catppuccin_ascciTitle_color" "$thm_red")"
	text="$(get_tmux_option "@catppuccin_ascciTitle_text" "Ascci Tmux")"

	module=$(build_status_module "$index" "$icon" "$color" "$text")

	echo "$module"
}
