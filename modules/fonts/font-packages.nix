{ config, lib, pkgs, pkgs-unstable, ... }:
{
	fonts = {
		packages = [
			pkgs-unstable.cascadia-code
		];
	};
}
