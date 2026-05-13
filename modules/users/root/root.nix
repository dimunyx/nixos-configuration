{ config, lib, pkgs, pkgs-unstable, ... }:
{
	users = {
		users = {
			root = {
				hashedPasswordFile = ./password;
				shell = pkgs-unstable.fish;
			};
		};
	};
}
