{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		initrd = {
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
		};
	};
}
