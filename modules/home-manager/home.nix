{ pkgs, ... }:
{
	imports = [
		./users/botnaru/home.nix
	];

	home = {
		username = "botnaru";
		homeDirectory = "/home/botnaru";
		stateVersion = "25.11";
		packages = with pkgs; [
			btop
			pfetch
		];
	};
}
