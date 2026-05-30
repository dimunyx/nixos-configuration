{ pkgs, pkgs-unstable, ... }:
{
	imports = [
		./users/botnaru/home.nix
	];

	home = {
		username = "botnaru";
		homeDirectory = "/home/botnaru";
		stateVersion = "26.05";
	};
}
