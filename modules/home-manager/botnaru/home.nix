{
	config,
	pkgs,
	pkgs-unstable,
	inputs,
	...
}:
{
	home = {
		username = "botnaru";
		homeDirectory = "/home/botnaru";
		stateVersion = "25.11";
	};

	programs = {
		btop = {
			enable = true;
			package = pkgs-unstable.btop;
			settings = {
				color_scheme = "gruvbox_dark_v2";
				vim_keys = false;
			};
		};
	};
}
