{ pkgs, ... }:
{
	services = {
		gammastep = {
			enable = true;
			tray = true;
			settings = {
				general = {
					dawn-time = 07:30;
					dusk-time = 20:00;
					temp-night = 3500;
					brightness-day = 1.0;
					brightness-night = 1.0;
					fade = 1;
					adjustment-method = "wayland";
					location-provider = "manual";
				};
				manual = {
					lat = 47.0;
					lon = 28.8;
				};
			};
		};
	};
}
