{ config, lib, pkgs, pkgs-unstable, nix-cachyos-kernel, ... }:
{
	imports = [
		./cpu/main.nix
		./boot/main.nix
		./nixpkgs/main.nix
		./fileSystem/main.nix
	];
}
