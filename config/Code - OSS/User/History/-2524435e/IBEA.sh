#!/usr/bin/env bash
set_bspwm_config() {
		bspc config border_width 0
		bspc config top_padding 2
		bspc config bottom_padding 42
		bspc config normal_border_color "#cacaca"
		bspc config active_border_color "#cacaca"
		bspc config focused_border_color "#6272a4"
		bspc config presel_feedback_color "#6272a4"
		bspc config left_padding 2
		bspc config right_padding 2
		bspc config window_gap 6
}

# Set compositor configuration
set_picom_config() {
		sed -i "$HOME"/.config/bspwm/picom.conf \
			-e "s/shadow-color = .*/shadow-color = \"#000000\"/g" \
			-e "s/corner-radius = .*/corner-radius = 6/g" \
			-e "s/\".*:class_g = 'Alacritty'\"/\"100:class_g = 'Alacritty'\"/g" \
			-e "s/\".*:class_g = 'FloaTerm'\"/\"100:class_g = 'FloaTerm'\"/g" \
			-e "s/\".*:class_g = 'Updating'\"/\"100:class_g = 'Updating'\"/g" \
			-e "s/\".*:class_g = 'MusicPlayer'\"/\"100:class_g = 'MusicPlayer'\"/g" \
			-e "s/\".*:class_g = 'Sysfetch'\"/\"100:class_g = 'Sysfetch'\"/g" \
			-e "s/\".*:class_g = 'scratch'\"/\"90:class_g = 'scratch'\"/g"
}

# Set dunst notification daemon config
set_dunst_config() {
		sed -i "$HOME"/.config/bspwm/dunstrc \
		-e "s/transparency = .*/transparency = 0/g" \
		-e "s/frame_color = .*/frame_color = \"#0F0F0F\"/g" \
		-e "s/separator_color = .*/separator_color = \"#abb2bf\"/g" \
		-e "s/font = .*/font = JetBrainsMono Nerd Font Medium 9/g" \
		-e "s/foreground='.*'/foreground='#7560d3'/g"
		
		sed -i '/urgency_low/Q' "$HOME"/.config/bspwm/dunstrc
		cat >> "$HOME"/.config/bspwm/dunstrc <<- _EOF_
				[urgency_low]
				timeout = 3
				background = "#0F0F0F"
				foreground = "#cacaca"

				[urgency_normal]
				timeout = 6
				background = "#0F0F0F"
				foreground = "#cacaca"

				[urgency_critical]
				timeout = 0
				background = "#0F0F0F"
				foreground = "#cacaca"
_EOF_
}

# Launch the bar
launch_bars() {
		polybar -q isa-bar -c ${rice_dir}/config.ini &
}


### ---------- Apply Configurations ---------- ###

set_bspwm_config
set_term_config
set_picom_config
set_dunst_config
launch_bars
