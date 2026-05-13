{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		plymouth = {
			enable = true;
			logo = "${pkgs.nixos-icons}/share/icons/hicolor/128x128/apps/nix-snowflake.png";
		};
	};
}
