{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		greetd = {
			enable = true;
			package = pkgs-unstable.greetd;
			settings = {
				default_session = {
					user = "greeter";
					command = ''
						${pkgs.greetd.tuigreet}/bin/tuigreet \
						--time \
						--remember \
						--cmd Hyprland
					'';
				};
			};
		};
	};
}
