{ pkgs, pkgs-unstable, ... }:
{
	services = {
		gammastep = {
			enable = true;
			package = pkgs-unstable.gammastep;
			temperature = {
				day = 6500;
				night = 3500;
			};
			settings = {
				general = {
					dawn-time = "07:00-07:30";
					dusk-time = "19:30-20:00";
					brightness-day = "1.0";
					brightness-night = "1.0";
					fade = 1;
					adjustment-method = "wayland";
					location-provider = "manual";
				};
				manual = {
					lat = "47.0";
					lon = "28.8";
				};
			};
		};
	};
}
