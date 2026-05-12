{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		loader = {
			grub = {
				enable = true;
				efiSupport = true;
				device = "nodev";
			};
		};
	};
}
