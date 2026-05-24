{ config, lib, pkgs, pkgs-unstable, ... }:
{
	nixpkgs = {
		hostPlatform = lib.mkDefault "x86_64-linux";
	};
}
