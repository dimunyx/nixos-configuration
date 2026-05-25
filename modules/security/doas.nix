{ config, lib, pkgs, pkgs-unstable, ... }:
{
	security = {
		doas = {
			enable = true;
			package = pkgs-unstable.doas;
			wheelNeedsPassword = true;
			extraRules = [
				{
					groups = [
						"wheel"
					];
					persist = true;
					keepEnv = true;
				}
			];
		};
	};
}
