{ config, lib, pkgs, pkgs-unstable, inputs, silentSDDM, ... }:
{
	imports = [
		inputs.silentSDDM.nixosModules.default
	];

	programs = {
		silentSDDM = {
			enable = true;
			theme = "default";
		};
	};
}
