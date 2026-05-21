{ config, lib, pkgs, pkgs-unstable, ... }:
{
	networking = {
		firewall = {
			extraCommands = "iptables -t nat -A POSTROUTING -s 192.168.240.0/24 -o wlp2s0 -j MASQUERADE";
		};
	};
}
