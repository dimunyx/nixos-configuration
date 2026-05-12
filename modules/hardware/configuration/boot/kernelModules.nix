{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		kernelModules = [
			"kvm-amd"
		];
	};
}
