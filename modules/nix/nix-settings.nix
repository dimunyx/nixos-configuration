{ config, lib, pkgs, pkgs-unstable, ... }:
{
	nix = {
		package = pkgs-unstable.nixVersions.latest;
		overlays = [
			nix-cachyos-kernel.overlays.pinned
		];
		settings = {
			experimental-features = [
				"nix-command"
				"flakes"
			];
			substituters = [
				"https://attic.xuyh0120.win/lantian"
				"https://cache.garnix.io"
			];
			trusted-public-keys = [
				"lantian:EeAUQ+W+6r7EtwnmYjeVwx5kOGEBpjlBfPlzGlTNvHc="
				"cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="
			];
		};
	};
}
