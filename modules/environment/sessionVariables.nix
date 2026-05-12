{ config, lib, pkgs, pkgs-unstable, ... }:
{
	environment = {
		sessionVariables = {
			NIXOS_OZONE_WL = "1";
		};
	};
}
