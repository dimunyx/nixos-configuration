{
	inputs = {
		nixpkgs = {
			url = "github:NixOS/nixpkgs/nixos-25.11";
		};
		nixpkgs-unstable = {
			url = "github:NixOS/nixpkgs/nixos-unstable";
		};
		grub2-themes = {
			url = "github:vinceliuice/grub2-themes";
		};
		hyprland = {
			url = "github:hyprwm/Hyprland/v0.55.1";
		};
		home-manager = {
			url = "github:nix-community/home-manager/release-25.11";
			inputs = {
				nixpkgs = {
					follows = "nixpkgs";
				};
			};
		};
	};

	outputs = inputs@{ self, nixpkgs, nixpkgs-unstable, grub2-themes, hyprland, home-manager, ... }:
	{
		nixosConfigurations = {
			nixos-btw = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";

				specialArgs = {
					pkgs-unstable = nixpkgs-unstable.legacyPackages.x86_64-linux;
					inherit inputs;
				};

				modules = [
					./configuration.nix
					grub2-themes.nixosModules.default
					inputs.home-manager.nixosModules.default
				];
			};
		};
	};
}
