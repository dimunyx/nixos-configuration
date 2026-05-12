{ config, lib, pkgs, pkgs-unstable, ... }:
{
	boot = {
		initrd = {
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
