{ pkgs, ... }:
{
	imports = [
		./rofi/home.nix
		./cava/home.nix
		./kitty/home.nix
		./hyprlock/home.nix
		./hyprpaper/home.nix
		./fastfetch/home.nix
		./gammastep/home.nix
	];
}
