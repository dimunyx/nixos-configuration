{ pkgs, pkgs-unstable, ... }:
{
	programs = {
		mpv = {
			enable = true;
			package = pkgs.mpv;
			scripts = [
    				pkgs-unstable.mpvScripts.mpris
  			];
		};
	};
}
