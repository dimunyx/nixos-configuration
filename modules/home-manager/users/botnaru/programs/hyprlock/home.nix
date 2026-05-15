{ pkgs, ... }:
{
	programs = {
		hyprland = {
			enable = true;
			settings = {
				general = {
					hide_cursor = false;
				};
				animations = {
					enabled = true;
					bezier = "linear, 1, 1, 0, 0";
					animation = "fadeIn, 1, 5, linear";
					animation = "fadeOut, 1, 5, linear";
					animation = "inputFieldDots, 1, 2, linear";
				};
				background = {
					monitor = "";
					path = "/home/botnaru/.config/hypr/wallpaper/NixOS.png";
					blur_passes = "0.5";
				};
				input-field = {
					monitor = "";
					size = "20%, 5%";
					outline_thickness = 6;
					inner_color = "rgba(0,0,0,0)";
					outer_color = "rgba(0,0,255,1)";
					check_color = "rgba(0,255,0,1)";
					fail_color = "rgba(255,0,0,1)";
					font_color = "rgba(0,0,255,1)";
					fade_on_empty = true;
					rounding = 0;
					font_family = "CaskaydiaCove Nerd Font";
					placeholder_text = "Пароль ...";
					fail_text = "Не верно!";
					dots_spacing = "0.3";
					position = "0, 5";
					halign = "center";
					valign = "bottom";
				};
				label = {
					monitor = "";
					text = "$TIME";
					font_size = 90;
					font_family = "CaskaydiaCove Nerd Font";
					halign = "center";
					valign = "top";
					color = "rgba(0,0,255,1)";
				};
				label = {
					monitor = "";
					text = "cmd[update:1000] echo '$(date +'%d.%m.%Y')'";
					font_size = 24;
					font_family = "CaskaydiaCove Nerd Font";
					position = "0, -150";
					halign = "center";
					valign = "top";
					color = "rgba(0,0,255,1)";
				};
				label = {
					monitor = "";
					text = "$LAYOUT[us,ru]";
					font_size = 24;
					font_family = "CaskaydiaCove Nerd Font";
					on_click = "hyprctl switchxkblayout all next";
					position = "230, 15";
					halign = "center";
					valign = "bottom";
					color = "rgba(0,0,255,1)";
				};
			};
		};
	};
}
