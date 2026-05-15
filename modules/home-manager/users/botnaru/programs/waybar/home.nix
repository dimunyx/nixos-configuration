{ pkgs, ... }:
{
	programs = {
		hyprland = {
			enable = true;
			settings = {
				position = "top";
				layer = "top";
				modules-left = [
					"image"
					"custom/hyprland-ver"
					"custom/kernel"
					"custom-system-link"
					"custom/cava"
					"custom/weather"
					"tray"
				];
				modules-center = [
					"hyprland/workspaces"
				];
				modules-right = [
					"hyprland/language"
					"disk"
					"clock"
					"network"
					"battery"
					"group/show"
					"group/poweroff"
				];
				"image" = {
					path = "/home/botnaru/.config/waybar/icons/NixOS.svg";
					size = 18;
					on-click = "rofi -show drun";
					tooltip = false;
				};
				"custom/hyprland-ver" = {
					exec = "Hyprland --version | head -n1 | awk '{print $2}'";
					format = " {}";
					tooltip = false;
				};
				"custom/kernel" = {
					exec = "uname -r";
					format = " {}";
					tooltip = false;
				};
				"custom/system-link" = {
					exec = "printf '%s\n $(readlink /nix/var/nix/profiles/system)";
					format = " {}";
					tooltip = false;
					interval = 1;
				};
				"custom/cava" = {
					exec = "/home/botnaru/.config/waybar/scripts/cava.sh";
					format = " {}";
					tooltip = false;
				};
				"custom/weather" = {
					exec = "wttrbar --nerd --lang ru --location Lozova+Moldova";
					format = "{}°C";
					interval = 1;
					return-type = "json";
				};
				"tray" = {
					spacing = 4;
					reverse-direction = false;
				};
				"hyprland/workspaces" = {
					format = "{icon}";
					format-icons = [
						"active" = ""
						"default" = ""
						"empty" = ""
						"urgent" = "!"
					];
					on-scroll-down = "/home/botnaru/.config/waybar/scripts/previous-ws.sh";
					on-scroll-up = "/home/botnaru/.config/waybar/scripts/next-ws.sh";
					persistent-workspaces = {
						"*": 10;
					};
					tooltip = false;
				};
				"hyprland/language" = {
					format = " {short}";
					on-click = "hyprctl switchxkblayout all next";
					tooltip = false;
				};
				"disk" = {
					format = " {percentage_used}%";
					format-alt = " {used}/{total}";
					path = "/";
					unit = "GiB";
					interval = 1;
					states = {
						default = 20;
						warning = 50;
						critical = 99;
					};
					tooltip = false;
				};
				"clock" = {
					format = " {:%H:%M}";
					format-alt = " {:%H:%M:%S || %d.%m.%Y (%A)}";
					interval = 1;
					tooltip = false;
				};
				"network" = {
					format = "{icon} {essid}";
					format-alt = "{icon} {essid} ({signalStrength}%/{frequency}GHz)";
					format-ethernet = "󰈀 Ethernet";
					format-icons = [
						"󰤯"
						"󰤟"
						"󰤢"
						"󰤥"
						"󰤨"
					];
					interval = 1;
					tooltip = false;
				};
				battery = {
					format = "{icon} {capacity}%";
					format-alt = "{icon} {capacity}% ({time})";
					format-charging = "{icon} {capacity}";
					format-icons = {
						default = [
							"󰁺"
							"󰁻"
							"󰁼"
							"󰁽"
							"󰁾"
							"󰁿"
							"󰂀"
							"󰂁"
							"󰂂"
							"󰁹"
						];
						charging = [
							"󰢜"
							"󰂆"
							"󰂇"
							"󰂈"
							"󰢝"
							"󰂉"
							"󰢞"
							"󰂊"
							"󰂋"
							"󰂅"
						];
					};
					interval = 1;
					states = {
						warning = 20;
						critical = 10;
					};
					tooltip = false;
				};
				"group/show" = {
					orientation = "horizontal";
					drawer = {
						transition-duration = 500;
						transition-left-to-right = false;
						click-to-reveal = true;
					};
					modules = [
						"custom/show-a"
						"backlight"
						"wireplumber"
						"wireplumber#source"
						"memory"
						"cpu"
						"temperature"
					];
				};
				"group/poweroff" = {
					orientation = "horizontal";
					drawer = {
						transition-duration = 500;
						transition-left-to-right = false;
					};
					modules = [
						"custom/poweroff-a"
						"custom/notification"
						"custom/lock"
						"custom/logout"
						"custom/suspend"
						"custom/reboot"
					];
				};
				"custom/show-a" = {
					format = "";
					tooltip = false;
				};
				"backlight" = {
					scroll-step = 5;
					format = "{icon} {percent}%";
					format-icons = [
						""
						"󰪞"
						"󰪟"
						"󰪠"
						"󰪡"
						"󰪢"
						"󰪣"
						"󰪤"
						"󰪥"
						""
					];
					tooltip = false;
				};
				"wireplumber" = {
					format = "{icon} {volume}%";
					format-muted = " {volume}%";
					format-icons = {
						"headphones" = ""
    						"handsfree" = ""
     						"headset" = ""
    						"phone" = ""
    						"portable" = ""
    						"car" = ""
    						"default" [
							""
							""
							""
						]
					};
					on-click = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
					on-scroll-up = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+";
					on-scroll-down = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-";
					tooltip = false;
				};
				"wireplumber#source" = {
					node-type = "Audio/Source";
					format = " {volume}%";
					format-muted = " {volume}%";
					on-click = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
					on-scroll-up = "wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%+";
					on-scroll-down = "wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%-";
					tooltip = false;
				};
				"memory" = {
					format = " {percentage}%";
					format-alt = " {used}GiB";
					interval = 1;
					states = {
						default = 50;
						warning = 80;
						critical = 99;
					};
					tooltip = false;
				};
				"cpu" = {
					format = "󰍛 {usage}%";
					interval = 1;
					states = {
						default = 25;
						warning = 50;
						critical = 99;
					};
					tooltip = false;
				};
				"temperature" = {
					hwmon-path = "/sys/class/hwmon/hwmon2/temp1_input";
					format = "{icon} {temperatureC}°C";
					interval = 1;
					format-icons = [
						""
						""
						""
						""
						""
					];
					tooltip = false;
				};
				"custom/poweroff-a" = {
					format = "";
					on-click = "hyprshutdown -t 'Выключение системы' --post-cmd 'systemctl poweroff'";
					tooltip = false;
				};
				"custom/notification" = {
					format = "";
					on-click = "swaync-client -t";
					tooltip = false;
				};
				"custom/lock" = {
					format = "";
					on-click = "hyprlock";
					tooltip = false;
				};
				"custom/logout" = {
					format = "󰈆";
					on-click = "hyprshutdown -t 'Выход из сеанса'";
					tooltip = false;
				},
				"custom/suspend" = {
					format = "";
					on-click = "hyprlock & systemctl suspend";
					tooltip = false;
				};
				"custom/reboot" = {
					format = "";
					on-click = "hyprshutdown -t 'Перезагрузка системы' --post-cmd 'systemctl reboot'";
					tooltip = false;
				};
			};
			style = ''
				* {
					font-family: 'CaskaydiaCove Nerd Font';
					font-size: 16px;
					font-weight: 600;
				}

				window#waybar {
					background: transparent;
				}

				tooltip {
					background: rgba(0,0,255,0.25);
					border-left: 4px solid rgba(0,0,255,1);
					border-right: 4px solid rgba(0,0,255,1);
					border-top: 4px solid rgba(0,0,255,1);
					border-bottom: 4px solid rgba(0,0,255,1);
					border-radius: 0;
				}

				tooltip label {
					color: rgba(0,0,255,1);
				}

				#image {
					background: rgba(0,0,255,0.25);
				color: rgba(0,0,255,1);
	                        border-left: 4px solid rgba(0,0,255,1);
                        	border-right: 2px solid rgba(0,0,255,1);
                        	border-top: 4px solid rgba(0,0,255,1);
                        	border-bottom: 4px solid rgba(0,0,255,1);
                        	border-radius: 0;
                        	padding: 0 4px 0 4px;
                        }

                        #custom-hyprland-ver,
                        #custom-kernel,
                        #custom-system-link,
                        #custom-weather {
                        	background: rgba(0,0,255,0.25);
                        	color: rgba(0,0,255,1);
                        	border-left: 2px solid rgba(0,0,255,1);
                        	border-right: 2px solid rgba(0,0,255,1);
                        	border-top: 4px solid rgba(0,0,255,1);
                        	border-bottom: 4px solid rgba(0,0,255,1);
                        	padding: 0 4px 0 4px;
                        }

                        #custom-cava {
                        	background: rgba(0,0,255,0.25);
                        	color: rgba(0,0,255,1);
                        	border-left: 2px solid rgba(0,0,255,1);
                        	border-right: 2px solid rgba(0,0,255,1);
                        border-top: 4px solid rgba(0,0,255,1);
                        	border-bottom: 4px solid rgba(0,0,255,1);
                        	padding: 0 6px 0 5px;
                        }

                        #tray {
                        	background: rgba(0,0,255,0.25);
                           	border-left: 2px solid rgba(0,0,255,1);
                        	border-right: 4px solid rgba(0,0,255,1);
                        	border-top: 4px solid rgba(0,0,255,1);
                        	border-bottom: 4px solid rgba(0,0,255,1);
                        	border-radius: 0;
                        	padding: 0 4px 0 4px;
                        }

                        #workspaces {
                        	background: rgba(0,0,255,0.25);
                        	border-left: 4px solid rgba(0,0,255,1);
                        	border-right: 4px solid rgba(0,0,255,1);
                        }

                        #workspaces button {
                        	color: rgba(0,0,255,1);
                        	border-radius: 0;
                        }

                        #workspaces button.active {
                        	color: rgba(0,0,255,1);
                        }

                        #workspaces button.urgent {
                        	color: rgba(255,0,0,1);
                        }

                        #workspaces button:hover {
                        	opacity: 0.75;
                        }

                        menu {
                        	background: rgba(0,0,255,0.25);
                        	border: 4px solid rgba(0,0,255,1);
                        	border-radius: 0;
                        	padding: 6px;
                        }

                        menuitem {
                        	border-radius: 0;
                        	color: rgba(0,0,255,1);
                        }

                        menuitem:hover {
                        	background: rgba(0,0,255,0.25);
                        }

                        #language {
                        	background: rgba(0,0,255,0.25);
                        	color: rgba(0,0,255,1);
                        	border-left: 4px solid rgba(0,0,255,1);
                        	border-right: 2px solid rgba(0,0,255,1);
                        	border-top: 4px solid rgba(0,0,255,1);
                        	border-bottom: 4px solid rgba(0,0,255,1);
                        	border-radius: 0;
                        	padding: 0 4px 0 5px;
                        }

                        #disk {
                        	background: rgba(0,0,255,0.25);
                        	color: rgba(0,0,255,1);
                        	border-left: 2px solid rgba(0,0,255,1);
                        	border-right: 2px solid rgba(0,0,255,1);
                        	border-top: 4px solid rgba(0,0,255,1);
                        	border-bottom: 4px solid rgba(0,0,255,1);
                        	padding: 0 4px 0 5px;
                        }

                        #disk.warning {
                        	color: rgba(255,165,0,1);
                        }

                        #disk.critical {
	color: rgba(255,0,0,1);
                        }

                        #clock,
                        #network,
                        #battery,
                        backlight,
                        #wireplumber,
                        #memory,
                        #cpu,
                        #temperature {
                        	background: rgba(0,0,255,0.25);
                        	color: rgba(0,0,255,1);
                        	border-left: 2px solid rgba(0,0,255,1);
                        	border-right: 2px solid rgba(0,0,255,1);
                        	border-top: 4px solid rgba(0,0,255,1);
                        	border-bottom: 4px solid rgba(0,0,255,1);
                        	padding: 0 4px 0 4px;
                        }

                        #battery.charging {
                        	color: rgba(0,255,0,1);
                        }

                        #battery.warning {
                        	color: rgba(255,165,0,1);
                        }

                        #battery.critical {
                        	color: rgba(255,0,0,1);
                        }

                        #wireplumber.muted {
                        	color: rgba(255,0,0,1);
                        }

                        #wireplumber#source.muted {
                        	color: rgba(255,0,0,1);
                        }

                        memory.warning {
                        	color: rgba(255,165,0,1);
                        }

                        #memory.critical {
                        	color: rgba(255,0,0,1);
                        }

                        #cpu.warning {
                        	color: rgba(255,165,0,1);
                        }

                        #cpu.critical {
                        	color: rgba(255,0,0,1);
                        }

                        #temperature.warning {
                        	color: rgba(255,165,0,1);
                        }

                        #temperature.critical {
                        	color: rgba(255,0,0,1);
                        }

                        #custom-show-a {
                        	background: rgba(0,0,255,0.25);
                        	color: rgba(0,0,255,1);
                        	border-left: 2px solid rgba(0,0,255,1);
                        	border-right: 2px solid rgba(0,0,255,1);
                        	border-top: 4px solid rgba(0,0,255,1);
                        	border-bottom: 4px solid rgba(0,0,255,1);
                        	padding: 0 8px 0 4px;
                        }

                        #custom-poweroff-a {
                        	background: rgba(0,0,255,0.25);
                        	color: rgba(0,0,255,1);
                        	border-left: 2px solid rgba(0,0,255,1);
                        	border-right: 4px solid rgba(0,0,255,1);
                        	border-top: 4px solid rgba(0,0,255,1);
                        	border-bottom: 4px solid rgba(0,0,255,1);
                        	border-radius: 0;
                        	padding: 0 10px 0 5px;
                        }

                        #custom-notification {
                        	background: rgba(0,0,255,0.25);
                          	border-left: 2px solid rgba(0,0,255,1);
                        	border-right: 2px solid rgba(0,0,255,1);
                        	border-top: 4px solid rgba(0,0,255,1);
                        	border-bottom: 4px solid rgba(0,0,255,1);
                        	padding: 0 10px 0 3px;
                        }

                        #custom-lock {
                        	background: rgba(0,0,255,0.25);
                        	color: rgba(0,0,255,1);
                        	border-left: 2px solid rgba(0,0,255,1);
                        	border-right: 2px solid rgba(0,0,255,1);
                        	border-top: 4px solid rgba(0,0,255,1);
                        	border-bottom: 4px solid rgba(0,0,255,1);
                        	padding: 0 8px 0 4px;
                        }

                        #custom-logout {
                        	background: rgba(0,0,255,0.25);
                        	color: rgba(0,0,255,1);
                        	border-left: 2px solid rgba(0,0,255,1);
                        	border-right: 2px solid rgba(0,0,255,1);
                        	border-top: 4px solid rgba(0,0,255,1);
                        	border-bottom: 4px solid rgba(0,0,255,1);
                        	padding: 0 7px 0 4px;
                        }

                        #custom-suspend {
                        	background: rgba(0,0,255,0.25);
                        	color: rgba(0,0,255,1);
                        	border-left: 2px solid rgba(0,0,255,1);
                        	border-right: 2px solid rgba(0,0,255,1);
                        	border-top: 4px solid rgba(0,0,255,1);
                        	border-bottom: 4px solid rgba(0,0,255,1);
                        	padding: 0 10px 0 4px;
                        }

                        custom-reboot {
                        	background: rgba(0,0,255,0.25);
                        	color: rgba(0,0,255,1);
                        	border-left: 2px solid rgba(0,0,255,1);
                        	border-right: 2px solid rgba(0,0,255,1);
                        	border-top: 4px solid rgba(0,0,255,1);
                        	border-bottom: 4px solid rgba(0,0,255,1);
                        	padding: 0 8px 0 4px;
                        }

                        #image:hover,
                        #custom-hyprland-ver:hover,
                        #custom-kernel:hover,
                        #custom-system-link:hover,
                        #custom-cava:hover,
                        #custom-weather:hover,
                        #tray:hover,
                        #language:hover,
                        #disk:hover,
                        #clock:hover,
                        #network:hover,
                        #battery:hover,
                        #custom-show-a:hover,
                        #backlight:hover,
                        #wireplumber:hover,
                        #memory:hover,
                        #cpu:hover,
                        #temperature:hover,
                        #custom-poweroff-a:hover,
                        #custom-notification:hover,
 	        	#custom-lock:hover,
                        #custom-logout:hover,
                        #custom-suspend:hover,
                        #custom-reboot:hover {
                        	opacity: 0.75;
                        }
		'';
	};
}
