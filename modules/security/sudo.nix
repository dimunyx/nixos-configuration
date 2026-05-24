{ config, lib, pkgs, pkgs-unstable, ... }:
{
	security = {
		sudo = {
			enable = true;
			package = pkgs-unstable.sudo;
		};
	};
}
