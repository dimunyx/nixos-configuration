{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		blacklistedKernelModules = [
			"ideapad_laptop"
		];
	};
}
