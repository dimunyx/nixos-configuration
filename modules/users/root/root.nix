{ config, lib, pkgs, pkgs-unstable, ... }:
{
	users = {
		users = {
			root = {
				hashedPasswordFile = toString ./password;
				shell = pkgs-unstable.fish;
			};
		};
	};
}
