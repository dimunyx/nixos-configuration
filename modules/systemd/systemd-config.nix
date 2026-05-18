{ config, lib, pkgs, pkgs-unstable, ... }:
{
	systemd = {
		package = pkgs-unstable.systemd;
	};
}
