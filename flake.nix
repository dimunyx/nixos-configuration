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
	};

	outputs = inputs@{ self, nixpkgs, nixpkgs-unstable, grub2-themes, ... }:
	{
		nixosConfigurations = {
			nixos-btw = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";

				specialArgs = {
					pkgs-unstable = nixpkgs-unstable.legacyPackages.x86_64-linux;
				};

				modules = [
					./configuration.nix
					grub2-themes.nixosModules.default
				];
			};
		};
	};
}
