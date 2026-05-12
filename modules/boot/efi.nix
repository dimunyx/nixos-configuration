{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		loader = {
			efi = {
				canTouchEfiVariables = true;
			};
		};
	};
}
