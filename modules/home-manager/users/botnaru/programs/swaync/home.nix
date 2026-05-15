{ pkgs, ... }:
{
	services = {
		swaync = {
			enable = true;
			settings = {
				positionX = "right";
				positionY = "top";
				control-center-positionX = "none";
				control-center-positionY = "none";
				control-center-margin-top = 0;
				control-center-margin-bottom = 0;
				control-center-margin-left = 0;
				control-center-margin-right = 0;
				control-center-width = 500;
				control-center-height = 0;
				fix-to-screen = false;
				layer-shell-cover-screen = true;
				layer-shell = true;
				layer = "overlay";
				control-center-layer = "overlay";
				cssPriority = "user";
				notification-body-image-height = 100;
				notification-body-image-width = 200;
				notification-inline-replies = true;
				timeout = 10;
				timeout-low = 5;
				timeout-critical = 0;
				notification-window-width = 500;
				keyboard-shortcuts = false;
				image-visibility = true;
				transition-time = 200;
				hide-on-clear = true;
				hide-on-action = true;
				script-fail-notify = true;
				widgets = [
					"inhibitors"
					"dnd"
					"notifications"
				];
				widget-config = {
					notifications = {
						vexpand = false;
						empty-text = "Нет уведомлений";
					};
					inhibitors = {
						text = "Inhibitors";
						button-text = "Очистить";
						clear-all-button = true;
					};
					title = {
						text = "Notifications";
						clear-all-button = false;
						button-text = "Очистить";
					};
					dnd = {
						text = "Не беспокоить";
					};
					label = {
						max-lines = 5;
						text = "Нет уведомлений";
					};
				};
			};
			style = {
				* {
					font-family: "CaskaydiaCove Nerd Font";
					font-size: 16px;
					color: rgba(0,0,255,1);
					border-radius: 0;
				}

				:root {
  					--border-radius: 0px;
  					--cc-bg: rgba(255,255,255,1);
  					--widget-background: rgba(0,0,255,0.25);
  					--noti-bg-alpha: 1;
  					--padding: 6px;
				}

				.control-center {
					background: rgba(0,0,255,0.25);
					border: 6px solid rgba(0,0,255,1);
					border-radius: 0px;
				}

				.widget-dnd {
					background: rgba(255,255,255,1);
					border: 6px solid rgba(255,255,255,1);
					text-color: rgba(0,0,255,1);
					border-radius: 0px;
				}

				.widgets > .widget {
  					background: var(--widget-background);
  					border-radius: 0px;
  					padding: var(--padding);
  					border: 6px solid rgba(0,0,255,1);
  					color: rgba(0,0,255,1);
				}

				.control-center-list-placeholder {
  					padding: var(--padding);
				}

				.notification-group {
  					border-radius: 0px;
 				 	padding: 8px;
 				 	background: rgba(0,0,255,0.01);
 				 	color: black;
				}

				.notification-group .close-button {
					color: rgba(255,255,255,1);
					background: rgba(0,0,255,0.25);
					border-radius: 0px;
				}

				.notification-group .close-button:hover {
					background-color: rgba(0,0,255,0.5);
				}

				.notification-group .close-button:active {
					background-color: rgba(0,0,255,0.9);
				}

				.notification {
					background-color: rgba(0,0,255,0.25);
					border-radius: 0px;
				}

				.notification-background {
 				 	border-radius: 0px;
  					color: rgba(0,0,255,1);
				}

				.notification-background .notification:hover {
					background-color: transparent;
				}

				.notification-background .notification {
  					border-radius: 0px;
				}

				.notification-content .summary,
				.notification-content .time,
				.notification-content .body {
  					color: rgba(0,0,255,1);
				}

				.notification-background .close-button {
  					border-radius: 0px;
  					color: rgba(0,0,255,1);
  					background-color: rgba(0,0,255,0.25);
				}

				.notification-background .close-button:hover {
 				 	background-color: rgba(0,0,255,0.5);
				}

				.notification-background .close-button:active {
				  	background-color: rgba(0,0,255,0.9);
				}

				.notification-row .notification-background .notification .notification-action:hover,
				.notification-row .notification-background .notification .notification-default-action:hover {
					background: rgba(0,0,255,0.3);
				}
			};
		};
	};
}
