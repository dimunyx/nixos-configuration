{ config, lib, pkgs, pkgs-unstable, ... }:
{
	users = {
		users = {
			botnaru = {
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
