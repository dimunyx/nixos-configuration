{ config, lib, pkgs, pkgs-unstable, inputs, silentSDDM, ... }:
{
	imports = [
		inputs.silentSDDM.nixosModules.default
	];

	programs = {
		silentSDDM = {
			enable = true;
			theme = "default";
			backgrounds = {
				myBackground = "/etc/nixos/modules/programs/silentSDDM/wallpaper/NixOS.png";
			};
			settings = {
				"LoginScreen" = {
					background = "myBackground";
				};
			};
		};
	};
}
