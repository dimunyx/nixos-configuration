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
						${pkgs.tuigreet}/bin/tuigreet \
						--time \
						--cmd start-hyprland
					'';
				};
			};
		};
	};
}
