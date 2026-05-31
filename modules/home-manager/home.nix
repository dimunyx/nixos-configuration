{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./users/dimunyx/home.nix
	];

	home = {
		username = "dimunyx";
		homeDirectory = "/home/dimunyx";
		stateVersion = "26.05";
	};
}
