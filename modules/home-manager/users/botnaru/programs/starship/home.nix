{ pkgs, ... }:
{
	programs = {
		starship = {
			enable = true;
			enableFishIntegration = true;
			settings = {
				add_newline = false;
				format = lib.concatStrings [
					"$hostname$directory$git_branch"
					"$username"
				];
				fill = {
					symbol = "'-'";
					style = "'fg:245'";
				};
				package = {
					disabled = true;
				};
				git_branch = {
					style = "bg: 252";
					symbol = "󰘬";
                                        truncation_length = 12;
					truncation_symbol = "";
					format = "[](bold fg:#0000FF)[$symbol $branch(:$remote_branch)](fg:#000000 bg:#0000FF)[](bold fg:#0000FF)";
				};
				git_commit = {
					commit_hash_length = 4;
					tag_symbol = " ";
				};
				git_state = {
					format = "'[\($state( $progress_current of $progress_total)\)]($style) '";
					cherry_pick = "[🍒 PICKING](bold red)";
				};

				git_status = {
					conflicted = " 🏳 ";
					ahead = " 🏎💨 ";
					behind = " 😰 ";
					diverged = " 😵 ";
					untracked = " 🤷 ‍";
					stashed = " 📦 ";
					modified = " 📝 ";
					staged = "'[++\($count\)](green)'";
					renamed = " ✍️ ";
					deleted = " 🗑 ";
				};

				hostname = {
					ssh_only = false;
					format =  "[](bold bg: #0000FF)[$hostname](bg:#0000FF bold fg:000000)[](bold fg:#0000FF)";
					trim_at = ".companyname.com";
					disabled = false;
				};

				line_break = {
					disabled = false;
				};

				username = {
					format = "[](bold fg:#0000FF)[$user](bold bg:#0000FF fg:#000000)[](bold bg:#000000 fg:#0000FF)";
					disabled = false;
					show_always = true;
				};

				directory = {
					home_symbol = " ";
					format = "'[](bold fg:#0000FF)[$path](bold fg:#000000 bg:#0000FF)[](bold fg:#0000FF)'";
				};

				directory.substitutions = [
					"Рабочий стол" = " "
					"Документы" = " "
					"Загрузки" = " "
					"Музыка" = "󰎈 "
					"Изображения" = " "
					"Видео" = " "
					"Общедоступные" = " "
					"Шаблоны" = " "
					".config" = " "
					".local" = " "
					".var" = " "
					".icons" = " "
				];
			};
		};
	};
}
