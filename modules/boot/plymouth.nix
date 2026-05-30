{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		kernelParams = [
			"video=1920x1080"
		];
		plymouth = {
			enable = true;
			logo = "${pkgs.nixos-icons}/share/icons/hicolor/128x128/apps/nix-snowflake.png";
		};
	};
}
