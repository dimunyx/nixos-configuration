{ pkgs, ... }:
{
	programs = {
		fastfetch = {
			enable = true;
			settings = {
				logo = {
					type = "auto";
					source = "nixos";
					color = {
						"1" = "#0000FF";
						"2" = "#0000FF";
						"3" = "#0000FF";
						"4" = "#0000FF";
						"5" = "#0000FF";
						"6" = "#0000FF";
					};
				};
			display = {
				separator = "->";
				color = {
					keys = "#0000FF";
					title = "#0000FF";
					separator = "#0000FF";
				};
			};
			modules = [
				"title"
				{
					type = "os";
					key = "OS";
					keyColor = "#0000FF";
					format = "{name} {version}";
				}
				{
					type = "packages";
					key = "Pkgs";
					keyColor = "#0000FF";
					format = "{nix-system} (nix) {flatpak-system} (flatpak)";
				}
				{
					type = "wm";
					key = "WM";
					keyColor = "#0000FF";
				}
				{
					type = "icons";
					key = "Icons";
					keyColor = "#0000FF";
				}
				{
					type = "cursor";
					key = "Cursor";
					keyColor = "#0000FF";
				}
				{
					type = "shell";
					key = "Shell";
					keyColor = "#0000FF";
				}
				{
					type = "terminal";
					key = "Terminal";
					keyColor = "#0000FF";
				}
				{
					type = "uptime";
					key = "Uptime";
					keyColor = "#0000FF";
				}
				{
					type = "kernel";
					key = "Kernel";
					keyColor = "#0000FF";
				}
				{
					type = "cpu";
					key = "CPU";
					keyColor = "#0000FF";
				}
				{
					type = "gpu";
					key = "GPU";
					keyColor = "#0000FF";
				}
				{
					type = "memory";
					key = "Memory";
					keyColor = "#0000FF";
				}
				{
					type = "disk";
					key = "Disk";
					keyColor = "#0000FF";
					folders = "/";
					format = "{1} / {2} ({3})";
				}
				{
					type = "battery";
					key = "Battery";
					keyColor = "#0000FF";
				}
				{
					type = "brightness";
					key = "Brightness";
					keyColor = "#0000FF";
					format = "{1}";
				}
				{
					type = "sound";
					key = "Volume";
					keyColor = "#0000FF";
					format = "{3}";
				}
				{
					type = "localip";
					key = "Local IP";
					keyColor = "#0000FF";
					compact = true;
					defaultRouteOnly = true;
				}
				{
					type = "publicip";
					key = "Public IP";
					keyColor = "#0000FF";
					compact = true;
				}
				{
					type = "command";
					key = "Days on NixOS";
					keyColor = "#0000FF";
					text = "birth_install=$(stat -c %W /); current=$(date +%s); time_progression=$((current - birth_install)); days_difference=$((time_progression / 86400)); echo $days_difference days";
				}
			};
		};
	};
}
