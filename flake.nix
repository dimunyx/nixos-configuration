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
			url = "github:hyprwm/Hyprland/v0.55.2";
		};
		home-manager = {
			url = "github:nix-community/home-manager/release-25.11";
		};
		nh = {
      			url = "github:nix-community/nh";
    		};
		nix-cachyos-kernel = {
			url = "github:xddxdd/nix-cachyos-kernel";
		};
		silentSDDM = {
			url = "github:uiriansan/SilentSDDM";
		};
	};

	outputs = inputs@{ self, nixpkgs, nixpkgs-unstable, grub2-themes, hyprland, home-manager, nh, nix-cachyos-kernel, silentSDDM, ... }:
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
					home-manager.nixosModules.home-manager
					{
						home-manager = {
							useGlobalPkgs = true;
							useUserPackages = true;
							extraSpecialArgs = {
								pkgs-unstable = nixpkgs-unstable.legacyPackages.x86_64-linux;
								inherit inputs;
							};
							users = {
								botnaru = import ./modules/home-manager/home.nix;
							};
						};
					}
					(
						{ pkgs, ... }:
						{
							nixpkgs = {
								overlays = [
									nix-cachyos-kernel.overlays.pinned
								];
							};
						}
					)
				];
			};
		};
	};
}
