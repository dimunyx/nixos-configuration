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
				hashedPasswordFile = "./password.txt";
				shell = pkgs-unstable.fish;
			};
		};
	};
}
