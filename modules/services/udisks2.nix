{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		udisks2 = {
			enable = true;
			package = pkgs-unstable.udisks;
		};
	};
}
