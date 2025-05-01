#!/bin/bash
#!/usr/bin/ffmpeg

	printf '\033[8;40;100t'		# will resize the window.

echo -------------------------===== Start of bash ====-------------------------

	start=$SECONDS
	now=$(date +"%Y-%m-%d_%A_%H:%M:%S")

	red=`tput setaf 1`
	green=`tput setaf 2`
	yellow=`tput setaf 11`
	blue=`tput setaf 12`
	reset=`tput sgr0`

	## General purposes variables. Needed before program to random variables.
	## All variables must be 0
	part=0		## Don't change this value.
	primeerror=0	## Ending error detector, do not change.
	error=0		## Test error, do not change.
	
	## All variables must be 0 or 1
	automatic=0	## automatic without (at least minimal) dialog box. (0 or 1)
	debug=0		## test debug. (0 or 1 debug mode)
	noquit=1	## noquit option. (0 or 1)
	lowercase=0	## Change all to lowercase option. (0 or 1)

	## Auto-generated variables. Do not change
	random=$(shuf -i 4096-131072 -n 1)	# Used for temp folders. A big number hard to guess for security reasons.
	random2=$RANDOM

	echo
	echo "Software lead-in. LostByteSoft ; https://github.com/LostByteSoft"
	echo
	echo "NEVER remove dual ## in front of lines. Theses are code annotations."
	echo "You can test / remove single # for testing purpose."
	echo
	echo "Current time : $now"
	echo
	echo "Common variables, you can changes theses variables as you wish to test."
	echo "Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random random2=$random2 primeerror=$primeerror"
	me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
	echo
	echo "Running job file : $me"
	echo

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
	printf '\033[8;22;100t'	## will resize the window
	loop=0			## start at 0 (do not change)
	maxloop=10		## this mean the maximum numbers of test ip. YOU CAN CHANGE THIS.
	echo
	echo Version 1,13 2025-01-06-11-06-03
	echo
	iptest=$(ip -6 addr | grep inet6 | grep 'fe80' | awk '{print $2}' | cut -d'/' -f1)
	echo "$iptest"
	echo
	echo "You have only Link-Local, non routable ipv6 (fe80::/10). So You have no public routable IPv6."
	echo "In this configuration You can make ipv6 connect only to Link-Local addresses in same L2 segment."
	echo "An Ipv6 address uses 128 bits as opposed to 32 bits in IPv4."
	echo "There so mutch adress in ipv6 that scanning is random. There 3.402823669×10(³⁸) address."
	echo "Just start more instance of this program if you want to scan more than one at a time."
	echo
	echo "${blue}██████ Press 'atl gr + c' to quit. ██████${reset}"
	echo
	scan=1
	
##-------------------------=========== SEPARATOR =============-------------------------
## Simple function sleep bar to wait. Wait the time you specified in code.
	## Version 1.26
	## https://github.com/LostByteSoft
	## LostBytesSoft, lost byte softwares, because everything is ephemeral.
	## Replace the nothing show sleep with a better looking bar.
	## SPECIFY A SLEEP TIME IN SECONDS BEFORE FUNCTION IN CODE. Default sleep is 3 second if not specified.

	## In code exemple:
	## sleep=3		## Use minimum 1 as a vriable.
	## functionsleepbar

	## Local var.
	sleep=0
	sleep1=0
	sleep2=0

functionsleepbar() {

	if [ "$sleep" -ge "1" ]; then
			sleep1=$(echo "scale=2 ; "$sleep"/20" | bc)
			sleep2=$(echo "scale=2 ; "$sleep"/10" | bc)
		else
			sleep=3
			sleep1=$(echo "scale=2 ; "$sleep"/20" | bc)
			sleep2=$(echo "scale=2 ; "$sleep"/10" | bc)
		fi

	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|	|	|	|	|	|        (0%)\r"${reset}
	sleep "$sleep2"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|██	|	|	|	|	|        (5%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|█████	|	|	|	|	|	(10%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|	|	|	|	|	(15%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|█	|	|	|	|	(20%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███	|	|	|	|	(25%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|█████	|	|	|	|	(30%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|	|	|	|	(35%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|█	|	|	|	(40%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███	|	|	|	(45%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|█████	|	|	|	(50%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|	|	|	(55%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|█	|	|	(60%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|███	|	|	(65%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|█████	|	|	(70%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|███████|	|	(75%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|███████|█	|	(80%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|███████|███	|	(90%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|███████|█████	|	(95%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${green}	|███████|███████|███████|███████|███████|      (100%)\r"${reset}
	sleep "$sleep1"
	echo -ne '\n'
	sleep=0
	sleep1=0
	sleep2=0
	}

##-------------------------=========== SEPARATOR =============-------------------------
 	
#router 2002:8717:a0::8717:a0
#dns 1 2001:4860:4860::8888
#dns 2 2001:4860:4860::8844

functionping() {
		echo -------------------------=========== SEPARATOR =============-------------------------
		ping -6 -t 0 -c 1 -q "$manualip"
			active=$(echo $?)
					if [ "$active" -eq "0" ]; then
						echo "${green}██████████ $manualname RESPONDING IP : Numbers scanned $scan ██████████${reset}"
						fi
					if [ "$active" -eq "1" ]; then
						echo "${blue}██████████ $manualname NO RESPONDING : Numbers scanned $scan ██████████${reset}"
						fi
					if [ "$active" -ge "2" ]; then
						echo "${red}██████████ $manualname OFFLINE OR CRASH : Numbers scanned $scan ██████████${reset}"
						fi
		sleep 0.1
		scan=$((scan+1))
		}

manualname=Router
manualip=2002:8717:a0::8717:a0
functionping
manualname=Dns1
manualip=2001:4860:4860::8888
functionping
manualname=Dns2
manualip=2001:4860:4860::8844
functionping


##-------------------------=========== SEPARATOR =============-------------------------

random=0
global=0
fe80=0
fe89=0
fd00=0

		response=$(zenity --height=300 --width=400 --list --radiolist --title "What do you want to scan ?." --column="Ipv6" --column="Select your scan mode." --column="Type."\
		false random random_everything false global global_2001 true fe80 local_network false fe89 local_network false fd00 local_network --separator=':')

		if [ -z "$response" ] ; then
			echo
			read -n 1 -s -r -p "You press cancel. Press ENTER key to exit !"
			echo
			exit
			fi

			IFS=":" ; for word in $response ; do 
				case $word in
				random) random=1 ;;
				global) global=1 ;;
				fe80) fe80=1 ;;
				fe89) fe89=1 ;;
				fd00) fd00=1 ;;
				esac
			done
			
	echo random=$random global=$global fe89=$fe89 fd00=$fd00
	echo

##-------------------------=========== SEPARATOR =============-------------------------

functionrandom1 () {
options=("a" "b" "c" "d" "e" "0" "1" "2" "3" "4" "5" "6" "7" "8" "9")
random_index=$(( RANDOM % ${#options[@]} ))
random1=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random2=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random3=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random4=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random5=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random6=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random7=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random8=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random9=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random10=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random11=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random12=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random13=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random14=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random15=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random16=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random17=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random18=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random19=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random20=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random21=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random22=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random23=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random24=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random25=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random26=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random27=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random28=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random29=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random30=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random31=${options[$random_index]}
random_index=$(( RANDOM % ${#options[@]} ))
random32=${options[$random_index]}
## Use only one.
if [ "$random" -eq "1" ]; then
## All random
randomipv61="$random1$random2$random3$random4:$random5$random6$random7$random8:$random9$random10$random11$random12:$random13$random14$random15$random16:$random17$random18$random19$random20:$random21$random22$random23$random24:$random25$random26$random27$random28:$random29$random30$random31$random32"
fi
if [ "$global" -eq "1" ]; then
## 2001 - Global addresses are routable on the internet and start with 2001: Global internet start 2001
randomipv61="2001:$random5$random6$random7$random8:$random9$random10$random11$random12:$random13$random14$random15$random16:$random17$random18$random19$random20:$random21$random22$random23$random24:$random25$random26$random27$random28:$random29$random30$random31$random32"
fi
if [ "$fe80" -eq "1" ]; then
## fe80 - These are meant to be used inside an internal network, and again they are not routed on the Internet. Link local addresses start with fe80:
randomipv61="fe80:$random5$random6$random7$random8:$random9$random10$random11$random12:$random13$random14$random15$random16:$random17$random18$random19$random20:$random21$random22$random23$random24:$random25$random26$random27$random28:$random29$random30$random31$random32"
fi
if [ "$fe89" -eq "1" ]; then
## fe89 - These are meant to be used inside an internal network, and again they are not routed on the Internet. Link local addresses start with fe89:
randomipv61="fe89:$random5$random6$random7$random8:$random9$random10$random11$random12:$random13$random14$random15$random16:$random17$random18$random19$random20:$random21$random22$random23$random24:$random25$random26$random27$random28:$random29$random30$random31$random32"
fi
if [ "$fd00" -eq "1" ]; then
## fd00 - Unique Local are meant to be used inside an internal network. For manually assignment by an organisation use the fd00: prefix.
randomipv61="fd00:$random5$random6$random7$random8:$random9$random10$random11$random12:$random13$random14$random15$random16:$random17$random18$random19$random20:$random21$random22$random23$random24:$random25$random26$random27$random28:$random29$random30$random31$random32"
fi
}

##-------------------------=========== SEPARATOR =============-------------------------

function handle_interrupt {
	echo
echo "Software lead out."
	printf '\033[8;26;102t'		## minimum of ? for graphics, will resize the window, if needed.
	echo
	echo "Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random"
	echo "Debug data : random2=$random2 automatic=$automatic primeerror=$primeerror id=$id"
	echo
	echo "Finish... with numbers of actions : $part"
	echo "This script take $(( SECONDS - start )) seconds to complete."
	date=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
	echo "Time needed: $date"
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	echo
	echo "$now (Time now)" >>/dev/shm/logs.txt
	echo "	Time needed : $date" >>/dev/shm/logs.txt
	echo "	Name of software : $me" >>/dev/shm/logs.txt
	echo "	Debug data : debug=$debug debugcore=$debugcore error=$error part=$part noquit=$noquit random=$random random2=$random2 automatic=$automatic primeerror=$primeerror id=$id" >>/dev/shm/logs.txt
	echo "	File (If any used) : $file" >>/dev/shm/logs.txt
	echo " " >>/dev/shm/logs.txt

echo -------------------------===== End of Bash ======-------------------------
## Exit, wait or auto-quit.

	if [ "$primeerror" -ge "1" ]; then
		echo
		echo "	${red}████████████████████████████████████████████${reset}"
		echo "	${red}██                                        ██${reset}"
		echo "	${red}██     Unknown entry event... ERROR(S)    ██${reset}"
		echo "	${red}██                                        ██${reset}"
		echo "	${red}████████████████████████████████████████████${reset}"
		echo
		echo "Numbers of error(s) : $primeerror"
		echo
		echo "RUNNING : $me"
		debug
		#functionsmallbar
		noquit=1
	else
		echo
		echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "${green}██         NO errors detected.        ██${reset}	${blue}██       Time needed : $date       ██${reset}"
		echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo
		echo "RUNNING : $me"
	fi

	if [ "$noquit" -eq "1" ]; then
		echo
		echo "${blue}	█████████████████ NO exit activated ███████████████████${reset}"
		echo
		read -n 1 -s -r -p "Press ENTER key to exit !"
		echo
		fi

	if [ "$debug" -eq "1" ]; then
		debug
		echo "${blue}		█████ DEBUG WAIT | Program finish. █████${reset}"
		echo
		read -n 1 -s -r -p "Press ENTER key to continue !"
		echo
		fi

	echo
	echo "${green}	███████████████ Finish, quit in 3 seconds █████████████████${reset}"
	echo
	functionsmallbar
	echo
	sleep 0.5
	exit 0
	}

scan=0

##-------------------------=========== SEPARATOR =============-------------------------

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"

while true; do
trap handle_interrupt SIGINT

	while [ "$loop" -le "$maxloop" ]
		do
		echo -------------------------=========== SEPARATOR =============-------------------------
		functionrandom1
		#echo loop = $loop maxloop = $maxloop
		ping -6 -t 0 -c 1 -q "$randomipv61"
			active=$(echo $?)
					if [ "$active" -eq "0" ]; then
						echo "${green}██████████ RESPONDING IP : Numbers scanned $scan ██████████${reset}"
						fi
					if [ "$active" -eq "1" ]; then
						echo "${blue}██████████ NO RESPONDING : Numbers scanned $scan ██████████${reset}"
						fi
					if [ "$active" -eq "2" ]; then	## watchdog detector.
						echo "${red}██████████ OFFLINE OR CRASH : Numbers scanned $scan ██████████${reset}"
						fi
		sleep 0.1
		scan=$((scan+1))
	done
done

## -----===== Start of eula =====-----

	End-user license agreement (eula)

 	JUST DO WHAT THE F*** YOU WANT WITH THE PUBLIC LICENSE
 	
 	Version 3.1415926532 (January 2022)
 	
 	TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
    	
	Everyone is permitted to copy and distribute verbatim or modified copies of
 	this license document.
 	
 	As is customary and in compliance with current global and interplanetary
 	regulations, the author of these pages disclaims all liability for the
 	consequences of the advice given here, in particular in the event of partial
 	or total destruction of the material, Loss of rights to the manufacturer
 	warranty, electrocution, drowning, divorce, civil war, the effects of radiation
 	due to atomic fission, unexpected tax recalls or encounters with
 	extraterrestrial beings elsewhere.
 	
 	YOU MUST ACCEPT THESES TERMS OR NOTHING WILL HAPPEN.
 	
 	LostByteSoft no copyright or copyleft we are in the center.
 	
 	You can send your request and your Christmas wishes to this address:
 	
 		Père Noël
 		Pôle Nord, Canada
 		H0H 0H0

## -----===== End of file =====-----
