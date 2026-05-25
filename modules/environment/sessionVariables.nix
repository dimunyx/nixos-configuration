{ config, lib, pkgs, pkgs-unstable, ... }:
{
	environment = {
		sessionVariables = {
			NIXOS_OZONE_WL = "1";
			EDITOR = "nvim";
			VISUAL = "nvim";
			BROWSER = "app.zen_browser.zen";
		};
	};
}
