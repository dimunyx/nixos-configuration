{ pkgs, ... }:
{
	programs = {
		rofi = {
			enable = true;
			configPath = "./config.rasi";
		};
	};
}
