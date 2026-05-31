{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		displayManager = {
			ly = {
				enable = true;
				package = pkgs-unstable.ly;
				settings = {
					logToFile = false;
					logToJournal = true;
					session_log = null;
					animation = "matrix";
					bigclock = true;
				};
			};
		};
	};
}
