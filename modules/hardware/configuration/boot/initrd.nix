{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		initrd = {
			enable = true;
			verbose = false;
			availableKernelModules = [
				"nvme"
				"xhci_pci"
				"ahci"
				"usb_storage"
				"sd_mod"
				"sdhci_pci"
			];
			kernelModules = [ ];
			systemd = {
				enable = true;
				package = pkgs-unstable.systemd;
			};
		};
	};
}
