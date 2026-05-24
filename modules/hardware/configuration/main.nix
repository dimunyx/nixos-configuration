{ config, lib, pkgs, pkgs-unstable, ... }:
{
	imports = [
		./cpu/main.nix
		./boot/main.nix
		./nixpkgs/main.nix
		./fileSystem/main.nix
	];
}
