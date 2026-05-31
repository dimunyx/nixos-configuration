{ config, lib, pkgs, pkgs-unstable, ... }:
{
	users = {
		users = {
			dimunyx = {
				isNormalUser = true;
				extraGroups = [
					"wheel"
					"networkmanager"
				];
				hashedPasswordFile = toString ./password;
				shell = pkgs-unstable.fish;
			};
		};
	};
}
