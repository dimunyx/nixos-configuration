{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		kernelParams = [
			"quiet"
			"splash"
			"loglevel=3"
			"systemd.show_status=false"
			"udev.log_priority=3"
			"rd.udev.log_lovel=3"
			"rd.systemd.show_status=false"
		];
	};
}
