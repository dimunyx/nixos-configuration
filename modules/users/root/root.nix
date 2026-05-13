{ config, lib, pkgs, pkgs-unstable, ... }:
{
	users = {
		users = {
			root = {
				hashedPasswordFile = "./password.txt";
				shell = pkgs-unstable.fish;
			};
		};
	};
}
