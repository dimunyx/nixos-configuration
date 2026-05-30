{ config, lib, grub2-themes, pkgs, pkgs-unstable, ... }:
{
	boot = {
		loader = {
			grub2-theme = {
				enable = true;
				footer = true;
				theme = "vimix";
				customResolution = "1920x1080";
			};
		};
	};
}
