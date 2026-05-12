{ config, lib, pkgs, pkgs-unstable, ... }:
{
	nix = {
		package = pkgs-unstable.nixVersions.latest;
		settings = {
			experimental-features = [
				"nix-command"
				"flakes"
			];
		};
	};
}
