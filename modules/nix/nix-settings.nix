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
				# linux-cachyos-lto prebuilt binaries
				"https://attic.xuyh0120.win/lantian"
				"https://cache.garnix.io"
				# Hyprland prebuilt binaries
				"https://hyprland.cachix.org"
			];
			trusted-substituters = [
				# Hyprland prebuilt binaries
				"https://hyprland.cachix.org"];
			trusted-public-keys = [
				# linux-cachyos-lto prebuilt binaries
				"lantian:EeAUQ+W+6r7EtwnmYjeVwx5kOGEBpjlBfPlzGlTNvHc="
				"cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="
				# Hyprland prebuilt binaries
				"hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
			];
			cores = 6;
			max-jobs = 12;
		};
	};
}
