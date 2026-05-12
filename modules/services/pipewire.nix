{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		pipewire = {
			enable = true;
			package = pkgs-unstable.pipewire;
			audio = {
				enable = true;
			};
			pulse = {
				enable = true;
			};
			wireplumber = {
				enable = true;
				package = pkgs-unstable.wireplumber;
			};
		};
	};
}
