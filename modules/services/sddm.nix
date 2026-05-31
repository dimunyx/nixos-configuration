{ config, lib, pkgs, pkgs-unstable, ... }:
{
	services = {
		displayManager = {
			defaultSession = "hyprland";
			sddm = {
				enable = true;
				package = pkgs.kdePackages.sddm;
				wayland = {
					enable = true;
				};
				settings = {
					Theme = {
						CursorTheme = "Bibata-Modern-Ice";
						CursorSize = 36;
					};
					General = {
						GreeterEnvironment = lib.mkForce "QML2_IMPORT_PATH=${config.programs.silentSDDM.package}/share/sddm/themes/silent/components/,QT_IM_MODULE=qtvirtualkeyboard,XCURSOR_THEME=Bibata-Modern-Ice";
					};
				};
				extraPackages = with pkgs-unstable; [
					bibata-cursors
				];
			};
		};
	};
}
