{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		extraModulePackages = with config.boot.kernelPackages; [
			binder_linux
		];
	};
}
