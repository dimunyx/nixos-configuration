{ config, lib, grub2-themes, pkgs, pkgs-unstable, ... }:
{
	boot = {
		loader = {
			grub2-theme = {
				enable = true;
				footer = true;
				theme = "whitesur";
				customResolution = "1920x1080";
			};
		};
	};
}
