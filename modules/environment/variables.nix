{ config, lib, pkgs, pkgs-unstable, ... }:
{
	environment = {
		variables = {
			EDITOR = "nvim";
			VISUAL = "nvim";
			BROWSER = "app.zen_browser.zen";
		};
	};
}
