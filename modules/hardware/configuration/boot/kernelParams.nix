{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		kernelParams = [
			"quiet"
			"splash"
		];
	};
}
