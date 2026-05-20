{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		kernelModules = [
			"kvm-amd"
			"binder_linux"
		];
	};
}
