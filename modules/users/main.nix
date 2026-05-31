{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./root/root.nix
		./botnaru/dimunyx.nix
	];
}
