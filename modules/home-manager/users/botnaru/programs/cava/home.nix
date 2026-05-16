{ pkgs, ... }:
{
	programs = {
		cava = {
			enable = true;
			settings = {
				general = {
					autosens = 1;
					gravity = 100;
					bars = 0;
					bar_width = 5;
					bar_spacing = 0;
					sensitivity = 80;
					mode = "normal";
					framerate = 60;
				};
				input = {
					method = "pipewire";
				};
				output = {
					method = "ncurses";
				};
				color = {
					foreground = "'#0000FF'";
					gradient = 0;
				};
				smoothing = {
					smoothing = 77;
				};
				eq = {
					"1" = 2;
					"2" = 1;
					"3" = 1;
					"4" = 1;
					"5" = 1;
				};
			};
		};
	};
}
