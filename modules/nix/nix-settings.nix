{ config, lib, pkgs, pkgs-unstable, ... }:
{
	nix = {
		package = pkgs-unstable.nixVersions.latest;
		settings = {
			experimental-features = [
				"nix-command"
				"flakes"
			];
			substituters = [
				"https://attic.xuyh0120.win/lantian"
			];
			trusted-public-keys = [
				"lantian:EeAUQ+W+6r7EtwnmYjeVwx5kOGEBpjlBfPlzGlTNvHc="
			];
		};
	};
}
