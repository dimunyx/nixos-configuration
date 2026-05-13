{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		kernelParams = [
			"quiet"
			"splash"
			"udev.log_priority=3"
			"rd.systemd.show_status=false"
		];
	};
}
