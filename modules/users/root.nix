{ config, lib, pkgs, pkgs-unstable, ... }:
{
	users = {
		users = {
			root = {
				hashedPassword = "$6$oj.lBPe6NfKlzwPK$4Geda3HHbrRI7n.httno.oNjJeS7sjZRI6SC1dVhRSiUC1NVs.RTjiuTyKMMWWyI.eXm3n/Z28rYSi1oEcgeD1";
				shell = pkgs-unstable.fish;
			};
		};
	};
}
