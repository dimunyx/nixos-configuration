{ pkgs, pkgs-unstable, ... }:
{
	programs = {
		mpv = {
			enable = true;
			package = pkgs-unstable.mpv;
			scripts = [
    				pkgs-unstable.mpvScripts.mpris
  			];
		};
	};
}
