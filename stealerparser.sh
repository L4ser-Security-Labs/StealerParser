#!/bin/bash

# Coloring scheme for notfications and logo
ESC="\x1b["
RESET=$ESC"39;49;00m"
CYAN=$ESC"33;36m"
RED=$ESC"31;01m"
GREEN=$ESC"32;01m"

# Warning
function warning() 
{	echo -e "\n$RED [!] $1 $RESET\n"
}

# Green notification
function notification() 
{	echo "\n$GREEN [+] $1 $RESET\n"
}

# Cyan notification
function notification_b() 
{	echo "\n$CYAN [-] $1 $RESET\n"
}

# Print logo and general info
function logo() 
{	echo  "$CYAN"
	printf "

###################################
#---Author:  L4sec              --#
#---Twitter: @l4sec             --#
#---Type:    Log Parser         --#
#---Version: 0.0.1              --#
###################################" && echo "$RESET\n"
	main_menu
}

# print tool list
function tools() 
{	notification_b "Available websites, select a number to search for credentials"
	printf "\
+-------------------------------+
| Website               	|
+-------------------------------+
|1. Facebook			|
|2. Twitter/X			|
|3. Instagram			|
|4. LinkedIn			|
|5. Snapchat			|
|6. Outlook			|
|7. Github			|
|8. G-Mail			|
|9. Yahoo Mail			|
|10. TikTok			|
|11. Discord			|
|12. Netflix			|
|13. Roblox			|
|14. Telegram			|
|15. Spotify			|
|16. Apple ICloud		|
|17. OpenAI			|
|18. Amazon			|
|19. AliExpress			|
|20. PayPal			|
|21. Others			|
+-------------------------------+\n"
	list
}

function opt_list() 
{	notification_b "Welcome to StealerParser"
	printf "
1) Help	                 2) List and Parse
3) Update Tool           4) Quit\n"

	main_menu
}

# Display usage information and details
function usage() 
{	notification_b "WELCOME TO STEALERPARSER"
	printf "This script parses Stealer Logs and helps you easily find accounts you're looking for.

Below is an overview of the options available to you.

The 'Help' option displays this informational message. 

The 'List and Parse' option shows you a list of popular accounts to quickly parse. 

The 'Update Tool' options automatically downloads and installs
latest updates of this script. 

The 'Quit' allows you to exit this tool.
\n"

    main_menu
}


## Tool Update Function
function StealerParseUpdater() 
{	if [[ -d "UpdateTool" ]]; then
		warning "Looking for new updates..."
		clear
	else
		notification "Contacting StealerParser..."
		sleep 1
		git clone https://github.com/L4ser-Security-Labs/StealerParser.git
		notification "Updating StealerParser..."
		sleep 1
		notification "StealerParser has successfully updated. Quit and Relaunch utility."
        main_menu
	fi
}

## Facebook Parser Function
function ParseFacebook() 
{	read -p "Enter the full path to the stealer folder: " main_folder
    	local search_string="facebook.com"
		local output_file="$search_string.txt"
		local match_count=0

		notification "Searching for Facebook credentials..."
		for folder in "$main_folder"/*; do
			if [ -d "$folder" ]; then
				echo "Searching in folder: $folder"
				for file in "$folder"/*; do
					if [ -f "$file" ]; then
						if grep -q "$search_string" "$file"; then
							((match_count++))
							echo "Match found in file: $file" >> "$output_file"
							grep -A 2 "$search_string" "$file" >> "$output_file"
							echo >> "$output_file"
							notification "Matches found: $match_count\r"
						fi
					fi
				done
			fi
		done
    notification "\n $match_count results saved in: $output_file"
}

## Twitter/X Parser Function
function ParseTwitterX() 
{	read -p "Enter the full path to the stealer folder: " main_folder
    	local search_string="twitter.com"
		local output_file="$search_string.txt"
		local match_count=0

		notification "Searching for X credentials..."
		for folder in "$main_folder"/*; do
			if [ -d "$folder" ]; then
				echo "Searching in folder: $folder"
				for file in "$folder"/*; do
					if [ -f "$file" ]; then
						if grep -q "$search_string" "$file"; then
							((match_count++))
							echo "Match found in file: $file" >> "$output_file"
							grep -A 2 "$search_string" "$file" >> "$output_file"
							echo >> "$output_file"
							notification "Matches found: $match_count\r"
						fi
					fi
				done
			fi
		done
    notification "\n $match_count results saved in: $output_file"
}

## Instagram Parser Function
function ParseInstagram() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="instagram.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for Instagram credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
    notification "\n $match_count results saved in: $output_file"
}

## LinkedIn Parser Function
function ParseLinkedIn() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="linkedin.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for LinkedIn credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
    notification "\n $match_count results saved in: $output_file"
}

## Snapchat Parser Function
function ParseSnapchat() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="snapchat.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for Snapchat credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
    notification "\n $match_count results saved in: $output_file"
}

## Outlook Parser Function
function ParseOutlook() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="outlook.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for Outlook credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
    notification "\n $match_count results saved in: $output_file"
}

## Github Parser Function
function ParseGithub() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="github.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for Github credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
    notification "\n $match_count results saved in: $output_file"
}

## GMail Parser Function
function ParseGmail() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="google.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for GMail credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
	notification "\n $match_count results saved in: $output_file"
}

## Yahoo Mail Parser Function
function ParseYahooMail() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="yahoo.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching YahooMail credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
	notification "\n $match_count results saved in: $output_file"
}

## Tiktok Parser Function
function ParseTiktok() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="tiktok.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for TikTok credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
	notification "\n $match_count results saved in: $output_file"
}

## Discord Parser Function
function ParseDiscord() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="discord.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for Discord credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
	notification "\n $match_count results saved in: $output_file"
}

## Netflix Parser Function
function ParseNetflix() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="netflix.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for Netflix credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
	notification "\n $match_count results saved in: $output_file"
}

## Roblox Parser Function
function ParseRoblox() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="roblox.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for Roblox credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
	notification "\n $match_count results saved in: $output_file"
}

## Telegram Parser Function
function ParseTelegram() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="telegram.org"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for Telegram credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
	notification "\n $match_count results saved in: $output_file"
}

## Spotify Parser Function
function ParseSpotify() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="spotify.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for Spotify credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
	notification "\n $match_count results saved in: $output_file"
}

## Apple ICloud Parser Function
function ParseICloud() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="icloud.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for iCloud credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
	notification "\n $match_count results saved in: $output_file"
}

## OpenAI Parser Function
function ParseOpenAI() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="openai.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for OpenAI credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
	notification "\n $match_count results saved in: $output_file"
}

## Amazon Parser Function
function ParseAmazon() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="amazon.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for Amazon credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
	notification "\n $match_count results saved in: $output_file"
}

## AliExpress Parser Function
function ParseAliExpress() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="aliexpress.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for AliExpress credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
	notification "\n $match_count results saved in: $output_file"
}

## PayPal Parser Function
function ParsePayPal() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	local search_string="paypal.com"
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching for PayPal credentials..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done
	notification "\n $match_count results saved in: $output_file"
}

## Other Domains Parser Function
function ParseOthers() 
{	read -p "Enter the full path to the stealer folder: " main_folder
	read -p "Enter the domain: " search_string
	local output_file="$search_string.txt"
	local match_count=0

	notification "Searching..."
	for folder in "$main_folder"/*; do
		if [ -d "$folder" ]; then
			echo "Searching in folder: $folder"
			for file in "$folder"/*; do
				if [ -f "$file" ]; then
					if grep -q "$search_string" "$file"; then
						((match_count++))
						echo "Match found in file: $file" >> "$output_file"
						grep -A 2 "$search_string" "$file" >> "$output_file"
						echo >> "$output_file"
						notification "Matches found: $match_count\r"
					fi
				fi
			done
		fi
	done

notification "\n $match_count results saved in: $output_file"
}



# List and parse function
function list() 
{	printf "\n\n"
	options=("Facebook" "Twitter/X" "Instagram" "LinkedIn" "Snapchat" "Outlook" "Github" "G-Mail" "Yahoo Mail" "Tiktok" "Discord" "Netflix" "Roblox" "Telegram" "Spotify" "Apple ICloud" "OpenAI" "Amazon" "AliExpress" "PayPal" "Others" "Main Menu")
	PS3='Please enter your choice: '
	select opt in "${options[@]}"
	do
		case $opt in
			"Facebook")
			    ParseFacebook
			    tools
			    printf "%b \n"
				;;
			"Twitter/X")
			    ParseTwitterX
			    tools
			    printf "%b \n"
				;;
			"Instagram")
			    ParseInstagram
			    tools
		            printf "%b \n"
				;;
			"LinkedIn")
			    ParseLinkedIn
			    tools
		            printf "%b \n"
				;;
			"Snapchat")
			    ParseSnapchat
			    tools
			    printf "%b \n"
				;;
			"Outlook")
			    ParseOutlook
			    tools
			    printf "%b \n"
				;;
			"Github")
			    ParseGithub
			    tools
		            printf "%b \n"
				;;
			"G-Mail")
			    ParseGmail
			    tools
			    printf "%b \n"
				;;
			"Yahoo Mail")
			    ParseYahooMail
				tools
			    printf "%b \n"
				;;
			"Tiktok")
			    ParseTiktok
				tools
			    printf "%b \n"
				;;
			"Discord")
			    ParseDiscord
				tools
			    printf "%b \n"
				;;
			"Netflix")
			    ParseNetflix
				tools
			    printf "%b \n"
				;;
			"Roblox")
			    ParseRoblox
				tools
			    printf "%b \n"
				;;
			"Telegram")
			    ParseTelegram
				tools
			    printf "%b \n"
				;;
			"Spotify")
			    ParseSpotify
				tools
			    printf "%b \n"
				;;
			"Apple ICloud")
			    ParseICloud
				tools
			    printf "%b \n"
				;;
			"OpenAI")
			    ParseOpenAI
				tools
			    printf "%b \n"
				;;
			"Amazon")
			    ParseAmazon
				tools
			    printf "%b \n"
				;;
			"AliExpress")
			    ParseAliExpress
				tools
			    printf "%b \n"
				;;
			"PayPal")
			    ParsePayPal
				tools
			    printf "%b \n"
				;;
			"Others")
			    ParseOthers
			    tools
			    printf "%b \n"
				;;
			"Main Menu")
			    printf "\nReturning to main menu..."
			    sleep 1 && logo
				;;
			*) echo invalid option;;
		esac
	done
	}

# Download and install new version
function UpdateStealerParse() 
{	printf "\n\n"
	notification_b "Installing all available tools plus dependencies."
        StealerParseUpdater
	}

## Main Menu Function
function main_menu() 
{	options=("Help" "List and Parse" "Update Tool" "Quit")
    PS3='Please enter your choice: '
	select opt in "${options[@]}"
	do
		case $opt in
			"Help")
				usage
				printf "%b \n"
				;;
			"List and Parse")
				tools
				printf "%b \n"
				;;
			"Update Tool")
				StealerParseUpdate
				printf "%b \n"
				;;
			"Quit")
				exit 1
				;;
			*) echo invalid option;;
		esac
	done
	}

if [[ "$EUID" -ne 0 ]]; then
   warning "It is recommended that StealerParse is run as root"
   printf "Running it without super user privilege may result "
   printf "in the utility failing to parse permission enabled folders and files correctly \n"
   
   read -p 'Continue without root? Y/n : ' choice
   if [[ $choice == 'y' || $choice == 'Y' ]]; then
       logo
       main_menu
   else
       warning "Aborted"
       exit 1
   fi
else
	main_menu
fi
