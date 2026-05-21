{ config, lib, pkgs, pkgs-unstable, ... }:
{
	nixpkgs = {
		hostPlatform = lib.mkDefault "x86_64-linux";
		config = {
			allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
				"android-studio"
			];
		};
	};
}
