{ pkgs, ... }:
{
	programs = {
		kitty = {
			settings = {
				font_family = "CaskaydiaCove Nerd Font";
				font_size = 13;
				cursor_shape = "beam";
				cursor_trail = 2;
				confirm_os_window_close = 0;
				selection_background = "#0000FF";
			};
		};
	};
}
