{
	config,
	lib,
	pkgs,
	pkgs-unstable,
	inputs,
	...
}:
{
	home-manager = {
		extraSpecialArgs = {
			inherit inputs;
		};
		users = {
			"botnaru" = import ./botnaru/home.nix;
		};
	};
}
