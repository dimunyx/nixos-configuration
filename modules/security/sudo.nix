{ config, lib, pkgs, pkgs-unstable, ... }:
{
	security = {
		sudo = {
			enable = false;
		};
	};
}
