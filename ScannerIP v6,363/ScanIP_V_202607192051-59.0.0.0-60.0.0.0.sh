#!/bin/bash
#!/usr/bin/ffmpeg

	echo "-------------------------===== Start of bash ====-------------------------"
	printf '\033[8;27;90t'	## minimum of 90 for graphics.
	version=2026-07-19_Sunday_20:51:20

	## "0 or 1 , 0 deactivated , 1 activated ## All general variables must be 0 or 1"
		findsubfolders=0
		lowercase=0
		detox=0
		automatic=1
		debug=0
		debugcore=0
		minimize=0
		maximize=0
		reseize=1
		noquit=1

	SCRIPT_NAME=$(basename "$0")
	echo -ne "\033]0;$SCRIPT_NAME\a"
	printf '\033[8;20;90t'		## minimum of 90 for graphics.
	echo

## -------------------------=========== SEPARATOR =============-------------------------
	## Time, host name, file name, pid.
		start=$SECONDS
		now=$(date +"%Y-%m-%d_%H:%M:%S")	## time now
		hostname=$(cat /etc/hostname)
		#hostname="${hostname%-pc}"
		me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
		id=$(echo $PPID)			## current process id of the bash process
	## General purposes variables. Needed before program to random variables.
		logs=1		## Logging
	## All general variables must be 0, DO NOT CHANGE.
		part=0		## Don't change this value.
		primeerror=0	## Ending error detector, do not change.
		error=0		## Test error, do not change.
	## Auto-generated variables. DO NOT CHANGE.
		random=$(shuf -i 131072-524288 -n 1)	# Used for temp folders. A big number hard to guess for security reasons. 128-512
		random2=$RANDOM
	## Colors codes
		red=$(tput setaf 1)
		green=$(tput setaf 2)
		yellow=$(tput setaf 11)
		blue=$(tput setaf 12)
		orange=$(tput setaf 9)
		reset=$(tput sgr0)
	## Name of the pc you are running this bash.
		comuputerrunning=$(hostname)
		comuputerrunning=${comuputerrunning//-pc/}

## -------------------------=========== SEPARATOR =============-------------------------

	echo
	echo "${green}  ░▒▓█▓▒░      ░▒▓██████▓▒░ ░▒▓███████▓▒░▒▓████████▓▒░ "
	echo "${green}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░   ░▒▓█▓▒░     "
	echo "${green}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░  ░▒▓█▓▒░     "
	echo "${green}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░  ░▒▓█▓▒░     "
	echo "${green}  ░▒▓████████▓▒░▒▓██████▓▒░░▒▓███████▓▒░   ░▒▓█▓▒░     ${reset}"
	echo
	echo "${green}	  ░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓████████▓▒░ "
	echo "${green}	  ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░        "
	echo "${green}	  ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░        "
	echo "${green}	  ░▒▓███████▓▒░ ░▒▓██████▓▒░   ░▒▓█▓▒░   ░▒▓██████▓▒░   "
	echo "${green}	  ░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░      ░▒▓█▓▒░   ░▒▓█▓▒░        "
	echo "${green}	  ░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░      ░▒▓█▓▒░   ░▒▓█▓▒░        "
	echo "${green}	  ░▒▓███████▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░   ░▒▓████████▓▒░ ${reset}"
	echo
	echo "${green}		   ░▒▓███████▓▒░░▒▓██████▓▒░░▒▓████████▓▒░▒▓████████▓▒░ "
	echo "${green}		  ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}		  ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}		   ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░    ░▒▓█▓▒░     "
	echo "${green}			 ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}			 ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}		  ░▒▓███████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░         ░▒▓█▓▒░  ${reset}"
	echo

echo -------------------------=========== SEPARATOR =============-------------------------
	echo "Lead-in Version 6.09. LostByteSoft ; https://github.com/LostByteSoft"
	echo
	echo "${blue}█████${reset} Activated $me"
	echo
	echo "Version : $version"
	echo
	echo "NEVER remove dual ## in front of lines. Theses are code annotations."
	echo "You can test / remove single # for testing purpose."
	echo
	echo "Current time : $now"
	echo
	echo "You are running this script from : $comuputerrunning"
	echo
	echo "Running software file : $(dirname "$0")/"
	echo
	echo "Read me for this file : (EULA at the end of file, open in text.)"
	echo "By LostByteSoft, no copyright or copyleft. https://github.com/LostByteSoft"
	echo "Don't hack paid software, free software exists and does the job better."
	echo
	echo "Debug data : id=$id part=$part primeerror=$primeerror error=$error random=$random random2=$random2 logs=$logs"
	echo "	findsubfolders=$findsubfolders lowercase=$lowercase detox=$detox automatic=$automatic debug=$debug"
	echo "	debugcore=$debugcore minimize=$minimize maximize=$maximize reseize=$reseize noquit=$noquit"
	echo
	echo "My slogan is: IF you're smarter than me; THEN do it yourself FI"
	echo

echo -------------------------=========== SEPARATOR =============-------------------------
	echo "Color codes / Informations."
	echo
	echo   "${blue}	████████████████      INFORMATION(S)      ████████████████ ${reset}"
	echo  "${green}	████████████████     ALL OK / ACTIVE      ████████████████ ${reset}"
	echo "${yellow}	████████████████   ATTENTION / INACTIVE   ████████████████ ${reset}"
	echo "${orange}	████████████████                          ████████████████ ${reset}"
	echo    "${red}	████████████████   FATAL ERROR / OFFLINE  ████████████████ ${reset}"
	echo

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
	watchdog=1
	echo watchdog=$watchdog , 0 or 1 , 0 deactivated , 1 activated , default 1
	scanmoreport=0
	echo scanmoreport=$scanmoreport , 0 or 1 , 0 deactivated , 1 activated , default 0
	askmore=0
	echo askmore=$askmore , 0 or 1 , 0 deactivated , 1 activated , default 1
	pingdns=1
	echo pingdns=$pingdns , 0 or 1 , 0 deactivated , 1 activated , default 1
	## You can change dns ping. ( 1 or 0 ). Prefer option pingdns=0 to deactivate all.
	pingdnsCloudflare=1
	echo pingdnsCloudflare=$pingdnsCloudflare , 0 or 1 , 0 deactivated , 1 activated , default 1
	pingdnsgogle=1
	echo pingdnsgogle=$pingdnsgogle , 0 or 1 , 0 deactivated , 1 activated , default 1
	pingdnsopendns=1
	echo pingdnsopendns=$pingdnsopendns , 0 or 1 , 0 deactivated , 1 activated , default 1
	pingdnsquad9=1
	echo pingdnsquad9=$pingdnsquad9 , 0 or 1 , 0 deactivated , 1 activated , default 1
	htmlcreate=1
	echo htmlcreate=$htmlcreate , 0 or 1 , 0 deactivated , 1 activated , default 1
	watchdogreport=1
	echo watchdogreport=$watchdogreport , 0 or 1 , 0 deactivated , 1 activated , default 1
	minimize=0
	echo minimize=$minimize , 0 or 1 , 0 deactivated , 1 activated , default 0
	zonemindercreate=1
	echo zonemindercreate=$zonemindercreate , 0 or 1 , 0 deactivated , 1 activated , default 1
	sleepflood="0.7"
	echo sleepflood=$sleepflood , 0 or more , 0 high flood data , 0.7 default , 1 low flood data , 
	sleepping="0.5"
	echo sleepflood=$sleepping , 0 or more , 0 high flood data , 0.5 default , 1 low flood data , 
	loop1=59
	loop2=0
	loop3=0
	loop4=0
	
	maxip1=255
	maxip2=255
	maxip3=255
	maxip4=255
	
	endip1=60
	endip2=0
	endip3=0
	endip4=0
	
	globalversion=2026-07-19_Sunday_20:51:20
echo
part=$((part+1))
echo -------------------------===== Section $part =====-------------------------
	echo Check installed requirements !
	echo
if command -v tnftp >/dev/null 2>&1
	then
		echo "ftp installed continue."
		dpkg -s ftp | grep Version
		echo "${green} ████████████████ OK ████████████████ ${reset}"
		echo
		ftpinstall=1
	else
		echo "You don't have ' ftp ' installed, NO ERRORS WILL OCCUR IN THIS SOFTWARE."
		echo "Add with : sudo apt-get install ftp"
		echo
		echo "${blue} ████████████████ Dependency information ████████████████ ${reset}"
		echo
		echo "This software is working without ftp !"
		echo
		ftpinstall=0
	fi

## -------------------------===== Separator =====-------------------------
if command -v whois >/dev/null 2>&1
	then
		echo "whois installed continue."
		dpkg -s whois | grep Version
		echo "${green} ████████████████ OK ████████████████ ${reset}"
		echo
		whoisinstall=1
	else
		echo "You don't have ' whois ' installed, NO ERRORS WILL OCCUR IN THIS SOFTWARE."
		echo "Add with : sudo apt-get install whois"
		echo
		echo "${blue} ████████████████ Dependency information ████████████████ ${reset}"
		echo
		echo "This software is working without whois !"
		echo
		whoisinstall=0
	fi

## -------------------------===== Separator =====-------------------------
if command -v filezilla >/dev/null 2>&1
	then
		echo "filezilla installed continue."
		dpkg -s filezilla | grep Version
		echo "${green} ████████████████ OK ████████████████ ${reset}"
		filezillainstall=1
		echo
	else
		echo "You don't have ' filezilla ' installed."
		echo "Add with : sudo apt-get install filezilla"
		echo
		echo "${yellow}████████████████ Dependency information ████████████████${reset}"
		echo
		echo "This software is working without filezilla !"
		echo
		filezillainstall=0
	fi

## -------------------------===== Separator =====-------------------------
if command -v xclip >/dev/null 2>&1
	then
		echo "xclip installed continue."
		dpkg -s xclip | grep Version
		echo "${green} ████████████████ OK ████████████████ ${reset}"
		xclipinstall=1
	else
		echo "You don't have ' xclip ' installed."
		echo "Add with : sudo apt-get install xclip"
		echo
		echo "${yellow}████████████████ Dependency information ████████████████${reset}"
		echo
		echo "This software is working without xclip !"
		echo
		xclipinstall=0
	fi

## -------------------------===== Separator =====-------------------------
if command -v curl >/dev/null 2>&1
	then
		echo "curl installed continue."
		dpkg -s curl | grep Version
		echo "${green} ████████████████ OK ████████████████ ${reset}"
		echo
		curl=1
	else
		echo "You don't have ' curl ' installed."
		echo "Add with : sudo apt-get install curl"
		echo
		echo "${blue}████████████████ Dependency information ████████████████${reset}"
		echo
		echo "This software is working without curl !"
		echo
		curl=0
		sleep 0.5
	fi

## -------------------------===== Separator =====-------------------------
if command -v xdotool >/dev/null 2>&1
	then
		echo "xdotool installed continue."
		dpkg -s xdotool | grep Version
		echo "${green}████████████████ OK ████████████████ ${reset}"
		echo
		xdotoolinstall=1
	else
		echo "You don't have ' xdotool ' installed."
		echo "Add with : sudo apt-get install xdotool"
		echo
		echo "${blue}████████████████ Dependency information ████████████████${reset}"
		echo
		xdotoolinstall=0
	fi

## -------------------------===== Separator =====-------------------------
part=$((part+1))
echo -------------------------===== Section $part =====-------------------------
echo "Functions informations. Version 1.25"
	echo

##-------------------------=========== SEPARATOR =============-------------------------

	name=AUTOMATIC
	explain="The lowest possible questions/pause."
	if [ "$automatic" -eq "0" ]; then
		echo 	"Function ${green}█████${reset} Default deactivated $name . $explain"
	else
		echo 	"Function ${blue}█████${reset} Activated $name . $explain"
	fi
	echo

##-------------------------=========== SEPARATOR =============-------------------------

	name=DEBUG
	explain="Slow down execution with informations."
	if [ "$debug" -eq "0" ]; then
		echo 	"Function ${green}█████${reset} Default deactivated $name . $explain"
	else
		echo 	"Function ${blue}█████${reset} Activated $name . $explain"
	fi
	echo

	debug() {
		if [ "$debug" -eq "1" ]; then
			echo
			echo "${blue}	█████ DEBUG █████${reset}"
			echo
			echo "Debug data : id=$id part=$part primeerror=$primeerror error=$error random=$random random2=$random2 logs=$logs"
			echo "	findsubfolders=$findsubfolders lowercase=$lowercase detox=$detox automatic=$automatic debug=$debug"
			echo "	debugcore=$debugcore minimize=$minimize maximize=$maximize reseize=$reseize noquit=$noquit"
			echo
			reseize=0
			minimize=0
			maximize=0
			noquit=1
			printf '\033[8;45;150t'		## Will resize the window.
			fi
			}

##-------------------------=========== SEPARATOR =============-------------------------
## error function

	error() {
		if [ "$?" -ge 1 ]; then
			reseize=0
			noquit=1
			automatic=0
			primeerror=$((primeerror+1))
			echo
			echo "${red}████████████████████ ERROR was detected !!! ████████████████████${reset}"
			debug
			sleep 1
		else
			echo
			echo "${green} █████████ No error found. █████████ ${reset}"
			echo
			fi
		}

##-------------------------=========== SEPARATOR =============-------------------------

	name=NOQUIT
	explain="Do not quit at the end of the program."
	if [ "$noquit" -eq "0" ]; then
		echo 	"Function ${blue}█████${reset} Default deactivated $name . $explain"
	else
		echo 	"Function ${green}█████${reset} Activated $name . $explain"
	fi
	echo

##-------------------------=========== SEPARATOR =============-------------------------

	name=MINIMIZE
	explain="Minimize the program."
	if [ "$minimize" -eq "0" ]; then
		echo 	"Function ${blue}█████${reset} Default deactivated $name . $explain"
	else
		echo 	"Function ${green}█████${reset} Activated $name . $explain"
	fi

if [ "$minimize" -eq "1" ]; then
	pid=$(echo $PPID)
	if [ "$xdotoolinstall" -eq "1" ]; then
			echo
			echo "Function ${blue}█████ Minimize activated. ${yellow}pid = $pid${reset}${reset}"
			sleep 0.2
			window_id=$(xdotool search --pid $pid | tail -1)
			sleep 0.2
			#echo pid = $pid | window_id = $window_id
			xdotool windowminimize "$window_id"
			sleep 0.2
		else
			echo "${yellow} █████ xdotool not installed : pid = $pid${reset}"
		fi
	fi
	echo

##-------------------------=========== SEPARATOR =============-------------------------

	name=MAXIMIZE
	explain="Maximize the program."
	if [ "$maximize" -eq "0" ]; then
		echo 	"Function ${blue}█████${reset} Default deactivated $name . $explain"
	else
		echo 	"Function ${green}█████${reset} Activated $name . $explain"
	fi

if [ "$maximize" -eq "1" ]; then
	pid=$(echo $PPID)
	if [ "$xdotoolinstall" -eq "1" ]; then
			echo "Function ${blue}█████ Maximize activated. ${yellow}pid = $pid${reset}"
			sleep 0.2
			window_id=$(xdotool search --pid $pid | tail -1)
			sleep 0.2
			#echo pid = $pid | window_id = $window_id
			xdotool windowmaximize "$window_id"
			sleep 0.2
		else
			echo "${yellow}█████ xdotool not installed : pid = $pid${reset}"
		fi
	fi

##-------------------------=========== SEPARATOR =============-------------------------
## Simple function small bar to wait 3 sec. This bar does work with debian 12 & 13. Version 1.05

	functionsmallbar() {
		speed=0.3
		echo -ne ${yellow}'	TimeToQuit |                        |    (0%)\r'${reset}
		sleep "$speed"
		echo -ne ${yellow}'	TimeToQuit |  ██                    |   (10%)\r'${reset}
		sleep "$speed"
		echo -ne ${yellow}'	TimeToQuit |  ████                  |   (20%)\r'${reset}
		sleep "$speed"
		echo -ne ${yellow}'	TimeToQuit |  ██████                |   (30%)\r'${reset}
		sleep "$speed"
		echo -ne ${yellow}'	TimeToQuit |  ████████              |   (40%)\r'${reset}
		sleep "$speed"
		echo -ne ${yellow}'	TimeToQuit |  ██████████            |   (50%)\r'${reset}
		sleep "$speed"
		echo -ne ${yellow}'	TimeToQuit |  ████████████          |   (60%)\r'${reset}
		sleep "$speed"
		echo -ne ${yellow}'	TimeToQuit |  ██████████████        |   (70%)\r'${reset}
		sleep "$speed"
		echo -ne ${yellow}'	TimeToQuit |  ████████████████      |   (80%)\r'${reset}
		sleep "$speed"
		echo -ne ${yellow}'	TimeToQuit |  ██████████████████    |   (90%)\r'${reset}
		sleep "$speed"
		echo -ne ${yellow}'	TimeToQuit |  ████████████████████  |  (100%)\r'${reset}
		sleep "$speed"
		echo -ne '\n'
		}

## -------------------------===== Separator =====-------------------------
## Simple function bar to TimeOut 12 sec.
	## Version 2.03
	## https://github.com/LostByteSoft
	## LostBytesSoft, lost byte softwares, because everything is ephemeral.

	functionfastbar() {
		echo -ne ${blue}'	TimeOut |                        |    (0%)\r'${reset}
		sleep 1
		echo -ne ${blue}'	TimeOut |  █                     |   (5%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  ██                    |   (10%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  ███                   |   (15%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  ████                  |   (20%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  █████                 |   (25%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  ██████                |   (30%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  ███████               |   (35%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  ████████              |   (40%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  █████████             |   (45%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  ██████████            |   (50%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  ███████████           |   (55%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  ████████████          |   (60%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  █████████████         |   (65%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  ██████████████        |   (70%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  ███████████████       |   (75%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  ████████████████      |   (80%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  █████████████████     |   (85%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  ██████████████████    |   (90%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  ███████████████████   |   (95%)\r'${reset}
		sleep 0.6
		echo -ne ${blue}'	TimeOut |  ████████████████████  |  (100%)\r'${reset}
		sleep 0.6
		echo -ne '\n'
		}

##-------------------------=========== SEPARATOR =============-------------------------
## Simple function sleep bar to wait. Wait the time you specified in code.
	## Version 2.26
	## https://github.com/LostByteSoft
	## LostBytesSoft, lost byte softwares, because everything is ephemeral.
	## Replace the nothing show sleep with a better looking bar.
	## SPECIFY A SLEEP TIME IN SECONDS BEFORE FUNCTION IN CODE. Default sleep is 3 second if not specified.

	## In code exemple:
	## sleep=3		## Use minimum 1 as a vriable.
	## functionsleepbar

	## Local var.
	sleep=3
	sleep1=0
	sleep2=0
	
	##-------------------------=========== SEPARATOR =============-------------------------

functionsleepbar() {

	if [ "$sleep" -ge "1" ]; then
			sleep1=$(echo "scale=2 ; "$sleep"/20" | bc)
			sleep2=$(echo "scale=2 ; "$sleep"/10" | bc)
		else
			sleep=3
			sleep1=$(echo "scale=2 ; "$sleep"/20" | bc)
			sleep2=$(echo "scale=2 ; "$sleep"/10" | bc)
		fi

	#if [[ -n "$color" ]]; then
	#		echo "color is $color"
	#	else
	#		color=green
	#		echo "color is set to $color"
	#	fi

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
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|███████|███████|      (100%)\r"${reset}
	sleep "$sleep1"
	echo -ne '\n'
	}

##-------------------------=========== SEPARATOR =============-------------------------
echo

	## https://github.com/LostByteSoft
	## LostBytesSoft, lost byte softwares, because everything is ephemeral.

	## 0.0.0.0–0.35.255.255 Current network.
	## 127.0.0.0 to 127.255.255.255 Used for loopback addresses to the local host.
	## Alot reserved ip addresses...
	## 255.255.255.255 Reserved for the limited broadcast destination address.

	## Read here for reserved ip https://en.wikipedia.org/wiki/Reserved_IP_addresses
	## 592 708 864 ip addresses are reserved

	## THIS IS THE VERSION OF THE SCANNERIP. EACH PART HAVE IT'S OWN VERSION CODE.

	version=6.363		## 2026-07-10
	##version=6.361		## 2026-06-30
	## version=6.344	## 2026-06-19 - Various improvements - WatchDog also watch Quad9 (easy to change) for more safe connection quality.
	## version=6.343	## 2026-06-18 - Various improvements - Slowed down the ping process because it's flooding you ... (and crashing the internet)
	## version=6.24		## 2026-06-12 - (6.24 to 6.340) Added specific search for ZoneMinder, debug, improvement... watchdog debug and improvement.
	## version=6.23		## 2026-06-09
	## version=6.15		## 2025-11-07-14-18-25
	## version=6.14		## 2025-08-17-06-56-50
	## version=6.13		## 2025-06-30-11-45-53
	## version=6.12		## 2025-06-20-07-55-08
	## version=6.11		## 2025-06-19-08-05-32
	## version=6.10		## 2025-06-13-09-09-58
	## version=6.09		## 2025-06-12-12-35-06
	## version=6.08		## 2025-06-08-11-17-55
	## version=6.07		## 2025-06-06-19-39-49
	## version=6.06		## 2025-05-31-09-14-29
	## version=6.05		## 2025-05-18-10-57-25
	## version=6.04		## 2025-05-10-21-52-54
	## version=6.03		## 2025-05-06-21-13-31
	## version=6.02		## 2025-05-01-12-34-23
	## version=6.00		## 2025-04-26-07-30-08 ; Version 6.00 first public release. Not all version made it to public.
	## version=1.00		## 2025-01-01

	## Change the name of the tray bar.
	echo -ne "\033]0;ScanIP_$loop1.X.X.X\a"
	
## Software name, what is this, version, informations.
part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
	echo "Software name: SCANNER IP $version"
	echo
	echo "ScannerIP network for responding ip and test open port."
	echo
	echo "NOT answering devices will NOT shown."
	echo
	echo "When responding ip found scan with theses port:"
	echo "Common open port tested : 21, 80"
	echo "If adress found scan port  22, 23, 139, 443, 445, 8080, 1900, 49152"
	echo
	echo "https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers"
	echo
	echo "Max ip adress : 256.256.256.256 = 4 294 967 296  addresses"
	echo "256*256*256*256= 4M (the 0 count and 255 is special and count)"
	echo "IPv4 uses a 32-bit address space which provides 4 294 967 296 unique addresses."
	echo "592 708 864 are reserved so 3 702 258 432 are usable on direct internet."
	echo "Ports are unsigned 16-bit integers (0-65535)"	
	echo
	echo "Informations : (EULA at the end of file, open in text.)"
	echo "By LostByteSoft, no copyright or copyleft. https://github.com/LostByteSoft"
	echo
	echo "Don't hack paid software, free software exists and does the job better."
	echo

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"

	## LOCAL VAR, Optionnal variables, normally at 0, for testing or debug purposes.
	## debugcore is also used, you can change the value at the beggining of the bash.
	debugScannerIP=0
	#debugcore=0

	## VARIABLE DO NOT CHANGE THESES VALUES, MUST BE AT ZERO.
	port=0
	openport=0
	name=0
	extraportcount=0
	openextraport=0
	ftpconnect=0
	weblink=0
	scansession=0		## ip scanned this session, leave to 0, all scanned ip count
	zm=0			## ZoneMinder find
	answer=0		## An ip have been scanned and answer.
	noanswer=0		## An ip have been scanned but do not answer.

	## VARIABLE DO NOT CHANGE THESES VALUES, MUST BE AT PRECISE NUMBER.
	active=1
	choice=5
	sleepflood=0.7
	sleepping=0.5

	## VARIABLE DO NOT CHANGE THESES VALUES, MUST BE AT ZERO.
	maxlineshttp=0
	newfilehttp=0
	newfilehtm=0
	newfileftp=0
	newfileftpanonymous=0
	newftpfound=0
	newftpanonymousfound=0
	newfilezm=0
	newfilezmsh=0
	maxlineszm=0

	## VARIABLE DO NOT CHANGE THESES VALUES, MUST BE AT ZERO.
	locip=0.0.0.0
	extip=0.0.0.0
	gateip=0.0.0.0
	dnsip=0.0.0.0
	extip1=0
	gateip1=0
	locip1=0
	locip5=0
	extip5=0
	gateip5=0
	dnsip1=0
	dnsip5=0

	## VARIABLE DO NOT CHANGE THESES VALUES, MUST BE AT ZERO (OR TWO).
	test10times=0		## test 10 times in loop and waiting for internet/wan connexion.
	maxlooptimes=0
	watchdogerror=2
	watchdogerror100=0
	watchdogerror010=0
	watchdogerror001=0
	watchdogerror011=0
	watchdogexe=0		## Watchdog execution numbers of times executed in loop.

	## time to 0
	RunTime=0
	nowtime1=0
	nowtime2=0
	nowtime3=0
	nowtime4=0
	nowtime5=0

	ipname=$loop1.$loop2.$loop3.$loop4-$endip1.$endip2.$endip3.$endip4
	
##-------------------------=========== SEPARATOR =============-------------------------

	if [ "$debugScannerIP" -eq "1" ]; then
		reseize=0
		fi
	
	if [ "$debugcore" -eq "1" ]; then
		reseize=0
		fi

	if [ "$reseize" -eq "1" ]; then
			printf '\033[8;45;90t'		## will resize the window.
		else
			printf '\033[8;55;100t'		## will resize the window.
		fi

##-------------------------=========== SEPARATOR =============-------------------------
## Verify folders.

## Logs are going to Documents/ScanLOGS folder. $HOME/Documents/ScanLOGS/ScanLOGS-$ipname.txt
## Errors are going to Documents/ folder. $HOME/Documents/ScanERRORS.txt
## Ftp are going to Documents/ScanFTP folder. $HOME/Documents/ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh
## Http are going to Documents/ScanHTTP folder. $HOME/Documents/ScanHTTP/ScanHTTP-$loop1.$loop2.sh
## Extra are going to Documents/ScanEXTRA folder. $HOME/Documents/ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt
## Html are going to Documents/ScanHTML folder. $HOME/Documents/ScanHTML/ScanHTML-$ipname.htm
## ZoneMinder are going to Documents/ScanZoneMinder folder. $HOME/Documents/ScanZoneMinder/ScanZoneMinder.htm

	echo "Verify folders integrity."
	echo
	name=ScanLOGS
	if test -d "$HOME/Documents/ScanLOGS/"; then
			echo 	"Function ${green}█████${reset} Folder $name exist."
		else
			echo 	"Function ${blue}█████${reset} Folder $name does not exist create."
		  	mkdir -p "../ScanLOGS/"
		fi
		echo

	name=ScanFTP
	if test -d "$HOME/Documents/ScanFTP/"; then
			echo 	"Function ${green}█████${reset} Folder $name exist."
		else
			echo 	"Function ${blue}█████${reset} Folder $name does not exist create."
		  	mkdir -p "../ScanFTP/"
		fi
		echo

	name=ScanHTTP
	if test -d "$HOME/Documents/ScanHTTP/"; then
			echo 	"Function ${green}█████${reset} Folder $name exist."
		else
			echo 	"Function ${blue}█████${reset} Folder $name does not exist create."
		  	mkdir -p "../ScanHTTP/"
		fi
		echo

if [ "$askmore" -eq "1" ]; then
	name=ScanEXTRA
	if test -d "$HOME/Documents/ScanEXTRA/"; then
			echo 	"Function ${green}█████${reset} Folder $name exist."
		else
			echo 	"Function ${blue}█████${reset} Folder $name does not exist create."
		  	mkdir -p "../ScanEXTRA/"
		fi
		echo
	fi

if [ "$htmlcreate" -eq "1" ]; then
	name=ScanHTML
	if test -d "$HOME/Documents/ScanHTML/"; then
			echo 	"Function ${green}█████${reset} Folder $name exist."
		else
			echo 	"Function ${blue}█████${reset} Folder $name does not exist create."
			mkdir -p "../ScanHTML/"
		fi
		echo
	fi

if [ "$zonemindercreate" -eq "1" ]; then
	name=ScanZoneMinder
	if test -d "$HOME/Documents/ScanZoneMinder/"; then
			echo 	"Function ${green}█████${reset} Folder $name exist."
		else
			echo 	"Function ${blue}█████${reset} Folder $name does not exist create."
			mkdir -p "../ScanZoneMinder/"
		fi
		echo
	fi

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Program options. Change values in EACH files."
echo

	if [ "$debugScannerIP" -eq "1" ]; then
		echo 	"Function ${yellow}█████${reset} ACTIVE debugScannerIP. Watch variables and slow down the process."
		minimize=0
	else
		echo 	"Function ${green}█████${reset} Default DEACTIVATED debugScannerIP. Watch variables."
	fi
	echo

	##-------------------------=========== SEPARATOR =============-------------------------
	## Trying to include all variables.

	functiondebugScannerIP () {
		echo "DebugScannerIP. DebugExe $nowtime5 Code $codenum."

		echo "Debug soft | Name of software : $me"
		echo "Debug data | Pid=$id minimize=$minimize"
		echo "Debug Ver. | CoreVersion=$version GlobalVersion=$globalversion"
		echo "Debug opt. | debug=$debug debugcore=$debugcore debugScannerIP=$debugScannerIP"
		echo "Debug sleep | time : flood=$sleepflood ping=$sleepping"

		echo "Debug ScanIp | $loop1.$loop2.$loop3.$loop4 - $maxip1.$maxip2.$maxip3.$maxip4 - $endip1.$endip2.$endip3.$endip4"
		echo "Debug ScanIp | IpScanned=$scansession answer=$answer NoAnswer=$noanswer"

		echo "Debug WatchDog | data ip0 : extip=$extip gateip=$gateip locip=$locip dnsip=$dnsip"
		echo "Debug WatchDog | data ip1 : extip=$extip1 gateip=$gateip1 locip=$locip1 dnsip1=$dnsip1"
		echo "Debug WatchDog | data ip5 : extip=$extip5 gateip=$gateip5 locip=$locip5 dnsip5=$dnsip5"
		echo "Debug WatchDog | watchdogerror=$watchdogerror watchdog=$watchdog watchdogreport=$watchdogreport watchdogexe=$watchdogexe"
		echo "Debug WatchDog | watchdogerror100=$watchdogerror100 watchdogerror010=$watchdogerror010 watchdogerror100=$watchdogerror100 watchdogerror011=$watchdogerror011"
		echo "Debug WatchDog | pingdns=$pingdns test10times=$test10times maxlooptimes=$maxlooptimes"

		
		echo "Debug data | maxlineshttp=$maxlineshttp newfilehttp=$newfilehttp newfileftp=$newfileftp newfileftpanonymous=$newfileftpanonymous newfilehtm=$newfilehtm newfilezm=$newfilezm"
		echo "Debug data | scanmoreport=$scanmoreport extraportcount=$extraportcount askmore=$askmore openport=$openport htmlcreate=$htmlcreate"

		echo "Debug zm | Zm=$zm maxlineszm=$maxlineszm"

		echo "Debug time | RunTime=$runtime | nowtime1=$nowtime1 nowtime2=$nowtime2 nowtime3=$nowtime3 nowtime4=$nowtime4 nowtime5=$nowtime5"
		echo
		}	## end function

	functionsavefiles () {
		echo "Save file | ../ScanFTP/ScanFTP-$loop1.$loop2.sh"
		echo "Save file | ../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
		echo "Save file | ../ScanHTML/ScanHTML-$loop1.$loop2.htm"
		echo "Save file | ../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"	
		echo "Save file | ../ScanLOGS/ScanLOGS-$ipname.txt"
		echo "Save file | ../ScanLOGS/WatchDogLOGS-$loop1.txt"
		echo "Save file | ../ScanZoneMinder/ScanZoneMinder-$loop1.htm"
		echo "Save file | ../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
		echo
		}	## end function
		
	if [ "$debugScannerIP" -eq "1" ]; then
		codenum=289
		functiondebugScannerIP
		functionsavefiles
		read -n 1 -s -r -p "Variable checker (NO DATA READ) - Press any key to continue." 
		echo
		echo
		fi

##-------------------------=========== SEPARATOR =============-------------------------

	echo 	"Function ${green}█████${reset} Default ACTIVE LocalPing. Ping your LocalIP, your router and your ISP."

	functionping () {
		## WatchDog is used to verify each 255 ping if you computer, router or ISP is jammed or crashed.
		## 0 active 1 inactive
		watchdogerror=0
		watchdogerror100=0
		watchdogerror010=0
		watchdogerror001=0
		watchdogerror011=0
		## Manual test ping : ( 0 = active , 1 = inactive)
		## ping -W 0.2 -c 1 126.1.8.22 && echo --- ANSWER --- && echo $?
		## ping -W 0.2 -c 1 192.168.0.1 && echo --- ANSWER --- && echo $?
		## ping -W 0.2 -c 1 192.168.0.70 && echo --- ANSWER --- && echo $?

	##-------------------------=========== SEPARATOR =============-------------------------
	## get the isp, route and link ip

		extip=$(dig @resolver4.opendns.com myip.opendns.com +short 2>/dev/null)			## Watch if your modem respond. echo $extip
			if [ -z "$extip" ]; then
				extip1=0
				watchdogerror100=1
				extip5=ERROR
			else
				extip5=$extip
				extip1=1
				watchdogerror100=0
			fi

		if [ "$extip1" -eq "1" ]; then
			ping -t 1 -c 1 "$extip" &> /dev/null
			active=$(echo $?)
			if [ "$active" -ge "1" ]; then
				#echo "ExternalIP crashed : $extip"
				watchdogerror001=1
				watchdogerror=1
				echo "${red}█████████${reset} WatchDog ERROR | External IP | extip = $extip ${red}█████████${reset}"
			fi
		else
			echo "${green}█████████${reset} WatchDog Ping $extip ${reset}"
		fi

	##-------------------------=========== SEPARATOR =============-------------------------

		gateip=$(ip route | grep default | awk '{print $3}')								## Watch if your router respond.
			if [ -z "$gateip" ]; then
				gateip1=0
				watchdogerror010=1
				gateip5=ERROR
			else
				gateip5=$gateip
				gateip1=1
				watchdogerror010=0
			fi

		if [ "$gateip1" -eq "1" ]; then
			ping -t 1 -c 1 "$gateip" &> /dev/null
			active=$(echo $?)
			if [ "$active" -ge "1" ]; then
				#echo "GatewayIP crashed : $gateip"
				watchdogerror010=1
				watchdogerror=1
				echo "${red}█████████${reset} WatchDog ERROR | GateWay IP | gateip = $gateip ${red}█████████${reset}"
			fi
		else
			echo "${green}█████████${reset} WatchDog Ping $gateip ${reset}"
		fi

	##-------------------------=========== SEPARATOR =============-------------------------

		locip=$(ip link show up | grep -q "state UP" && ip route get 1 | awk '{print $(NF-2);exit}' 2>/dev/null)	## Watch if your lan card respond. echo $locip
			if [ -z "$locip" ]; then
				locip1=0
				watchdogerror001=1
				locip5=ERROR
			else
				locip5=$locip
				locip1=1
				watchdogerror001=0
			fi

		if [ "$locip1" -eq "1" ]; then
			ping -t 1 -c 1 "$locip" &> /dev/null
			active=$(echo $?)
			if [ "$active" -ge "1" ]; then
				#echo "LocalIP crashed : $locip"
				watchdogerror100=1
				watchdogerror=1
				echo "${red}█████████${reset} WatchDog ERROR  | Local IP | locip = $locip ${red}█████████${reset}"
			fi
		else
			echo "${green}█████████${reset} WatchDog Ping $locip ${reset}"
		fi

	##-------------------------=========== SEPARATOR =============-------------------------
	## Ping dns ip
	## OPENDNS Standard OpenDNS (recommended for most users)Primary: 208.67.222.222 Secondary: 208.67.220.220
	## GOOGLE IPv4 (most common)Primary: 8.8.8.8 Secondary: 8.8.4.4
	## Standard 1.1.1.1 (Recommended - No filtering) Primary: 1.1.1.1 Secondary: 1.0.0.1
	## BEST = Quad9 Security and threat protection. IPs:Primary: 9.9.9.9 Secondary: 149.112.112.112
	## BEST = Cloudflare 1.1.1.3 (Malware + Adult Content)

		pingdnsip=9.9.9.9
		dnsip=$(ping -c 2 -W 2 "$pingdnsip" 2>/dev/null)
			if [ -z "$dnsip" ]; then
				dnsip1=0
				watchdogerror011=0
				dnsip5=ERROR
			else
				dnsip5=$pingdnsip
				dnsip1=1
				watchdogerror011=0
				dnsip=$pingdnsip
			fi

			if [ "$dnsip1" -eq "1" ]; then
				#ping -c 2 -W 2 "$pingdnsip" &> /dev/null && echo "$dnsip" || echo "Ping failed"
				ping -c 2 -W 2 "$pingdnsip" &> /dev/null
				active=$(echo $?)
				if [ "$active" -ge "1" ]; then
					#echo "DnsIP crashed : $dnsip"
					watchdogerror011=1
					watchdogerror=1
					echo "${red}█████████${reset} WatchDog ERROR  | DnsIP | pingdnsip = $dnsip5 ${red}█████████${reset}"
				fi
			else
				echo "${green}█████████${reset} WatchDog Ping $dnsip5"
			fi

		if [ "$debugcore" -eq "1" ]; then
			echo "DEBUG dns | pingdnsip=$pingdnsip | dnsip=$dnsip dnsip1=$dnsip1 dnsip5=$dnsip5 | watchdogerror011=$watchdogerror011"
			sleep 3
			fi

	##-------------------------=========== SEPARATOR =============-------------------------
	## error.s on ping

		if [ "$watchdogerror100" -eq "1" ]; then
			watchdogerror=1
			fi
		if [ "$watchdogerror010" -eq "1" ]; then
			watchdogerror=1
			fi
		if [ "$watchdogerror001" -eq "1" ]; then
			watchdogerror=1
			fi
		if [ "$watchdogerror011" -eq "1" ]; then
			watchdogerror=1
			fi

	}	## end function

##-------------------------=========== SEPARATOR =============-------------------------

	echo
	if [ "$watchdog" -eq "1" ]; then
			echo 	"Function ${green}█████${reset} Default ACTIVE WatchDog. Verify if you computer, router or ISP is jammed."
		else
			echo 	"Function ${yellow}█████${reset} DEACTIVATED WatchDog. Verify if you computer, router or ISP is jammed."
		fi
	echo

	if [ "$watchdogreport" -eq "1" ]; then
			echo 	"Function ${green}█████${reset} ACTIVE WatchdogReport. Write watchdog errors and report to a file."
		else
			echo 	"Function ${blue}█████${reset} DEACTIVATED WatchdogReport. Write watchdog errors and report to a file."
		fi

	##-------------------------=========== SEPARATOR =============-------------------------

	watchdog () {
	nowtime1=$(date +"%Y-%m-%d")
	nowtime2=$(date +"%Y-%m-%d %H:%M:%S")
	nowtime5=$(date +"%Y-%m-%d, %A %e %B %Y , %H:%M:%S")
	#echo $nowtime5
	 
	if [ "$watchdog" -eq "1" ]; then
			functionping
			watchdogexe=$(( $watchdogexe + 1 ))
		else
			echo "${blue}███${reset} WatchDog | ExtIP DEACTIVATED | GateIP DEACTIVATED | LocIP DEACTIVATED | DnsIP DEACTIVATED ${blue}███${reset}"
			watchdogerror=2
			watchdog=0
		fi

	if [ "$watchdogerror" -eq "0" ]; then
			echo "${green}██${reset} WatchDog | ExtIP $extip5 | GateIP $gateip5 | LocIP $locip5 | DnsIP $dnsip5 ${green}██${reset}"
		else
			echo "${red}██${reset} WatchDog | ExtIP $extip5 | GateIP $gateip5 | LocIP $locip5 | DnsIP $dnsip5 ${green}██${reset}"

		fi

	if [ "$watchdogerror" -eq "0" ]; then
		runtime=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
		sleep "0.2"	
		echo "${blue}████████${reset} Infos | RunTime $runtime | CoreVersion $version | IpScanned $scansession | answer $answer | NoAnswer $noanswer"
		sleep "0.5"
		echo "${blue}████████${reset} Links | Time $nowtime1 | FileFound $newfileftp | FileFoundAnonymous $newfileftpanonymous | WebAccess $newfilehtm | ZoneMinder $zm"
		sleep "0.5"
		fi

	##-------------------------=========== SEPARATOR =============-------------------------

	if test -f "../ScanLOGS/ScanLOGS-$ipname.txt"; then
		#echo "Debug info :Read last line : LAST_LINE=$( tail -1 ../ScanLOGS/ScanLOGS-$ipname.txt | head -1 )"
		LAST_LINE=$( tail -1 "../ScanLOGS/ScanLOGS-$ipname.txt" | head -1 )
		fi

	if [[ "$LAST_LINE" == *"WatchDog"* ]]; then
		#echo "Debug info : Delete last line : sed -i '$d' ../ScanLOGS/ScanLOGS-$ipname.txt"
		sed -i '$d' "../ScanLOGS/ScanLOGS-$ipname.txt"
		fi

		## ip came from "ScanLOGS-$ipname.txt"
		echo "WatchDogData | ExternalIP $extip5 | GatewayIP $gateip5 | LocalIP $locip5 | DnsIp $dnsip5 | $nowtime2 | WatchDog executed at $loop1.$loop2.$loop3.$loop4" >> "../ScanLOGS/ScanLOGS-$ipname.txt"
		#echo " " >> "../ScanLOGS/ScanLOGS-$ipname.txt"

	##-------------------------=========== SEPARATOR =============-------------------------
	
	if [ "$watchdogerror" -eq "1" ]; then
		maxlooptimes=10
		test10times=1
		sleep=15
		echo
		echo "${red}███████████████ WATCHDOG ERROR at ip : $loop1.$loop2.$loop3.$loop4 ███████████████${reset}"
		echo "WatchDog | ERROR | WatchDog ERROR at ip (sleep 10 seconds): $loop1.$loop2.$loop3.$loop4 | $nowtime5" >> "../ScanLOGS/ScanLOGS-$ipname.txt"
		echo "WatchDogLOGS | ERROR | WatchDog error at ip (sleep 10 seconds): $loop1.$loop2.$loop3.$loop4 | $nowtime5" >> "../ScanLOGS/WatchDogLOGS-$loop1.txt"
		echo
		echo "${yellow}████████ WATCHDOG will try $maxlooptimes times to restart and loop test. ████████${reset}"
		echo
		echo "${yellow}████ If the connection comes back between these $maxlooptimes times, it will continue. ████${reset}"
		echo
		echo "${blue}████████ WATCHDOG sleep $sleep ████████${reset}"
		echo
		functionsleepbar
		echo
		functionping
		echo "${red}██${reset} WatchDog ERROR ${red}|${reset} ExternalIP $extip5 ${red}|${reset} GatewayIP $gateip5 ${red}|${reset} LocalIP $locip5 ${red}|${reset} DnsIp $dnsip5 ${red}██${reset}"
		echo "WatchDog | ERROR | ExternalIP $extip5 GatewayIP $gateip5 LocalIP $locip5 | DnsIp $dnsip5 | $nowtime2 | WatchDog executed at $loop1.$loop2.$loop3.$loop4" >> "../ScanLOGS/ScanLOGS-$ipname.txt"
		echo "WatchDogLOGS | ERROR | ExternalIP $extip5 GatewayIP $gateip5 LocalIP $locip5 DnsIp $dnsip5 | $nowtime5 | WatchDog executed at $loop1.$loop2.$loop3.$loop4" >> "../ScanLOGS/WatchDogLOGS-$loop1.txt"
		echo

		if [ "$watchdogreport" -eq "1" ]; then
			test10times=$(( $test10times - 1 ))
			## Watchdog related log
			echo "-------------------------=========== Error Watchdog Separator =============-------------------------" >> "../ScanERRORS.txt"
			echo "" >> "../ScanERRORS.txt"
			echo "Watchdog was started at $nowtime5 - WatchDog error scanner ip Version $version" >> "../ScanERRORS.txt"
			echo "Name of software | $me | Pid=$id | RunTime $runtime" >> "../ScanERRORS.txt"
			echo "Debug Version | CoreVersion=$version GlobalVersion=$globalversion" >> "../ScanERRORS.txt"
			echo "Debug Debug | debug=$debug debugcore=$debugcore debugScannerIP=$debugScannerIP" >> "../ScanERRORS.txt"
			echo "Debug scan | $loop1.$loop2.$loop3.$loop4 - $maxip1.$maxip2.$maxip3.$maxip4 - $endip1.$endip2.$endip3.$endip4" >> "../ScanERRORS.txt"
			echo "WatchDog | ERROR START | WATCHDOG error at ip : $loop1.$loop2.$loop3.$loop4 | ExternalIP $extip5 | GatewayIP $gateip5 | LocalIP $locip5 | DnsIp $dnsip5 | $nowtime5" >> "../ScanERRORS.txt"
			echo "Debug WatchDog | data ip0 : extip=$extip | gateip=$gateip | locip=$locip | dnsip=$dnsip" >> "../ScanERRORS.txt"
			echo "Debug WatchDog | data ip1 : extip=$extip1 | gateip=$gateip1 | locip=$locip1 | dnsip1=$dnsip1" >> "../ScanERRORS.txt"
			echo "Debug WatchDog | data ip5 : extip=$extip5 | gateip=$gateip5 | locip=$locip5 | dnsip5=$dnsip5" >> "../ScanERRORS.txt"
			echo "Debug WatchDog | watchdogerror=$watchdogerror | watchdog=$watchdog | watchdogreport=$watchdogreport | watchdogexe=$watchdogexe" >> "../ScanERRORS.txt"
			echo "Debug WatchDog | watchdogerror100=$watchdogerror100 watchdogerror010=$watchdogerror010 watchdogerror100=$watchdogerror100 watchdogerror011=$watchdogerror011" >> "../ScanERRORS.txt"
			#echo "" >> "../ScanERRORS.txt"

			## everything log
			#echo "-------------------------=========== Error Watchdog Separator =============-------------------------" >> "../ScanERRORS.txt"
			#echo "" >> "../ScanERRORS.txt"
			#functiondebugScannerIP >> "../ScanERRORS.txt"
			#echo "" >> "../ScanERRORS.txt"

			sleep "0.3"	## time to write to file.			
			fi
		
		##-------------------------=========== SEPARATOR =============-------------------------

		while [ "$test10times" -le "$maxlooptimes" ]
			do
				if [ "$watchdogerror" -eq "1" ]; then
					echo "${red}███${reset} WatchDog AUTO-RESCAN | ExternalIP $extip5 | GatewayIP $gateip5 | LocalIP $locip5 | DnsIp $dnsip5 ${red}███${reset}"
					echo "${yellow}███${reset} test10times=$test10times watchdog=$watchdog watchdogerror=$watchdogerror | \
					error100=$watchdogerror100 error010=$watchdogerror010 error100=$watchdogerror100 error011=$watchdogerror011 ${yellow}███${reset}"
					echo
					sleep=10
					functionsleepbar
					echo
					functionping
			echo "WatchDog | ERROR | WATCHDOG error at ip : $loop1.$loop2.$loop3.$loop4 | ExternalIP $extip5 | GatewayIP $gateip5 | LocalIP $locip5 | DnsIp $dnsip5 | $nowtime5" >> "../ScanLOGS/WatchDogLOGS-$loop1.txt"
			echo "WatchDog | watchdog=$watchdog watchdogerror=$watchdogerror test10times=$test10times | watchdogerror100=$watchdogerror100 watchdogerror010=$watchdogerror010 watchdogerror100=$watchdogerror100 watchdogerror011=$watchdogerror011" >> "../ScanLOGS/WatchDogLOGS-$loop1.txt"
					fi

				test10times=$(( $test10times + 1 ))
				if [ "$watchdogerror" -eq "0" ]; then
					if [ "$watchdogreport" -eq "1" ]; then
						#echo "Debug : watchdog=$watchdog watchdogerror=$watchdogerror test10times=$test10times | \
						#watchdogerror100=$watchdogerror100 watchdogerror010=$watchdogerror010 watchdogerror100=$watchdogerror100 watchdogerror011=$watchdogerror011" >> "../ScanERRORS.txt"
						if [ "$test10times" -le "5" ]; then
							echo "███ test10times=$test10times LOW error ███" >> "../ScanERRORS.txt"
						else
							echo "██████ test10times=$test10times MEDIUM error ██████" >> "../ScanERRORS.txt"
						fi
						if [ "$test10times" -ge "6" ]; then
							echo "█████████ test10times=$test10times BIG error █████████" >> "../ScanERRORS.txt"
							fi
						fi

nowtime5=$(date +"%Y-%m-%d %H:%M:%S")
echo "WatchDogLOGS | ERROR END | WATCHDOG error at ip : $loop1.$loop2.$loop3.$loop4 | ExternalIP $extip5 | GatewayIP $gateip5 | LocalIP $locip5 | DnsIp $dnsip5 | $nowtime5" >> "../ScanLOGS/WatchDogLOGS-$loop1.txt"
echo "WatchDogLOGS | watchdog=$watchdog watchdogerror=$watchdogerror test10times=$test10times | error100=$watchdogerror100 error010=$watchdogerror010 error100=$watchdogerror100 error011=$watchdogerror011" >> "../ScanLOGS/WatchDogLOGS-$loop1.txt"
echo "WatchDog | ERROR END | WATCHDOG error at ip : $loop1.$loop2.$loop3.$loop4 | ExternalIP $extip5 | GatewayIP $gateip5 | LocalIP $locip5 | DnsIp $dnsip5 | $nowtime5" >> "../ScanERRORS.txt"
echo "" >> "../ScanERRORS.txt"
echo "${green}████████${reset} Watchdog | ERROR END | Watchdogreport has looped $test10times times at ip $loop1.$loop2.$loop3.$loop4 | $nowtime5 ${green}████████${reset}"
echo "WatchDog | watchdog=$watchdog watchdogerror=$watchdogerror test10times=$test10times | error100=$watchdogerror100 error010=$watchdogerror010 error100=$watchdogerror100 error011=$watchdogerror011"
echo
				sleep 1
				break
				fi
			done
		fi	## needed
		
		##-------------------------=========== SEPARATOR =============-------------------------

		if [ "$watchdogerror" -eq "1" ]; then
			echo "${blue}█████████${reset} Test your connections, trying to continue ! ${blue}█████████${reset}"
			echo
			zenity --question --text="WatchDog is in error keep trying or deactivate WatchDog ? (Timeout 30 sec.)\
			\n\n Yes = Keep WatchDog , No = Deactivate WatchDog\n\nWait 240 seconds timeout (Time out = keep)." --timeout=240
				case $? in
				0) 
				echo "You answered yes && watchdog=1";;		## User clicked 'Yes'
				1) 
				echo "You answered no && watchdog=0";;		## User clicked 'No'
				5) 
				echo "Time out && watchdogerror=1";;		## Timeout occurred
				*) 
				echo "Unexpected! && watchdogerror=1" ;;	## Any other unexpected exit status
				esac
			fi

	}	## end function

##-------------------------=========== SEPARATOR =============-------------------------

	echo
	echo 	"Function ${green}█████${reset} Default ACTIVE Scan Open ports. Check if defined ports is open."
	echo

	if [ "$scanmoreport" -eq "1" ]; then
		echo 	"Function ${green}█████${reset} Default ACTIVE scanmoreport. Multiples port scan."
	else
		echo 	"Function ${blue}█████${reset} DEACTIVATED scanmoreport. Multiples port scan."
	fi

	##-------------------------=========== SEPARATOR =============-------------------------

	functionscanports() {
	
		## https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers
		## https://www.geeksforgeeks.org/50-common-ports-you-should-know/
		openport=0

		##-------------------------=========== SEPARATOR =============-------------------------

		ftpscanports() {
		timeout 0.5 bash -c "</dev/tcp/$loop1.$loop2.$loop3.$loop4/$port" 2> /dev/null
		active=$(echo $?)
		#echo $active
		if [ "$active" -eq "0" ]; then
			echo "${green}█████████ $loop1.$loop2.$loop3.$loop4:$port | OPEN $name Port $port ${reset} (msg$LINENO)"
			openport=1
			## Test anonymous connect and quit.
			#if echo -e "user anonymous\nbye" | ftp -n $loop1.$loop2.$loop3.$loop4:$port 2>/dev/null; then				## no timeout but working
			### TEST OUT # if timeout 3s bash -c 'echo -e "user anonymous\nbye" | ftp -n $loop1.$loop2.$loop3.$loop4:$port' 2>/dev/null; then	## with
			### output=$(bash -c 'echo -e "user anonymous\npass anonymous\nbye" | ftp -n $loop1.$loop2.$loop3.$loop4:$port' 2>/dev/null)
			output=$(bash -c echo -e "user anonymous\npass anonymous\nbye" | ftp -n $loop1.$loop2.$loop3.$loop4:$port)
			#echo ECHO output : $output
			#sleep 3
				if echo "$output" | grep -q "Failed to open file."; then
					if test -f "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"; then
						newfileftpanonymous=$(( $newfileftpanonymous + 1 ))
						fi
					if [ "$newfileftpanonymous" -eq "0" ]; then
						echo '#!/bin/bash' >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
						echo "printf '\033[8;20;65t'		# will resize the window." >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
						echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
						fi
					echo "${green}█████████${reset} $name connected successfully with port $port. Writed in ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
					ftpconnect=1
					echo "$loop1.$loop2.$loop3.$loop4:$port OPEN : anonymous $name" >> "../ScanLOGS/ScanLOGS-$ipname.txt"
					echo "echo" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
					echo "echo Anonymous login. Find on : $nowtime2" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
					echo "echo Testing ftp site : $loop1.$loop2.$loop3.$loop4 with port $port" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
					## With or without color bar.	
					#echo -e "\e]8;;http://$loop1.$loop2.$loop3.$loop4\e\\Open $loop1.$loop2.$loop3.$loop4 with web browser. Press hold ctrl to open.\e]8;;\e\\"
					echo -e "\e]8;;http://$loop1.$loop2.$loop3.$loop4 \e\\█████████ Open $loop1.$loop2.$loop3.$loop4 with web browser. Press hold ctrl to open.\e]8;;\e\\"
					echo "echo filezilla $loop1.$loop2.$loop3.$loop4:$port | xclip -selection clipboard" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
					echo "echo filezilla $loop1.$loop2.$loop3.$loop4:$port is in clipboard if you have xclip installed." >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
					echo "ftp ftp://anonymous:anonymous@$loop1.$loop2.$loop3.$loop4:$port" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
					echo "echo" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
					echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
					newftpanonymousfound=$(( $newftpanonymousfound + 1 ))
				else
					echo "${yellow}█████████${reset} Failed to connect $name port $port as anonymous." #Writed in "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
					ftpconnect=0
					#echo "$loop1.$loop2.$loop3.$loop4:$port OPEN : closed $name" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
						if test -f "../ScanFTP/ScanFTP-$loop1.$loop2.sh"; then
							newfileftp=$(( $newfileftp + 1 ))
							fi
						if [ "$newfileftp" -eq "0" ]; then
							echo '#!/bin/bash' >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
							echo "printf '\033[8;20;65t'		# will resize the window." >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
							echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
							newfileftp=$(( $newfileftp + 1 ))
							fi
					echo "echo" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
					echo "echo Automatic anonymous failed, trying manual $name anonymous on port $port Find on : $nowtime2" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
					echo "echo Testing ftp site : $loop1.$loop2.$loop3.$loop4 with port $port" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
					echo "echo filezilla $loop1.$loop2.$loop3.$loop4:$port | xclip -selection clipboard" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
					echo "echo filezilla $loop1.$loop2.$loop3.$loop4:$port is in clipboard if you have xclip installed." >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
					echo "ftp ftp://anonymous:anonymous@$loop1.$loop2.$loop3.$loop4:$port" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
					echo "echo" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
					echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
					newftpfound=$(( $newftpfound + 1 ))
				fi
				
				##-------------------------=========== SEPARATOR =============-------------------------

				if [ "$htmlcreate" -eq "1" ]; then
					if test -f "../ScanHTML/ScanHTML-$loop1.$loop2.htm"; then
						newfilehtm=$(( $newfilehtm + 1 ))
						fi
					if [ "$newfilehtm" -eq "0" ]; then
						echo '<!DOCTYPE html><html><head>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
						echo '<link rel="icon" type="image/x-icon" href="../lbslogo.ico">' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
						echo '</head><body style="background-color:gray">' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
						echo "<h1 style="font-size:2vw">LostByteSoft ScannerIP. This file must be in root of ScannerIP</h1>" >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
						echo '<!-- ########################################################### --><left>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
	echo '<p>LostByteSoft ScannerIP Menu : <a href='https://github.com/LostByteSoft'>LostByteSoft</a> <a href='../index.html'>Index</a> <a href='../ScannerLOGS.htm'>ScannerLOGS</a> <a href='S../ScannerHTML.htm'>ScannerHTML</a> <a href='ScanZoneMinder/ScanZoneMinder.htm'>ScanZoneMinder</a> <a href='../ScanERRORS.txt' target=_blank>ScanERRORS</a> <a href='../readME.md' target=_blank>readME.md</a></p>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
						newfilehtm=$(( $newfilehtm + 1 ))
						fi
				fi

				if [ "$ftpconnect" -eq "0" ]; then
					echo "<li><a href='ftp ftp://anonymous:anonymous@$loop1.$loop2.$loop3.$loop4:$port' \
					target=_blank>ftp ftp://anonymous:anonymous@$loop1.$loop2.$loop3.$loop4:$port</a> OPEN $name Without anonymous accces. \
					(Copy link and paste in terminal.) ftp ftp://anonymous:anonymous@$loop1.$loop2.$loop3.$loop4:$port Scanned on time $nowtime2</li>" \
					>> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
				else
					echo "<li><a href='ftp ftp://anonymous:anonymous@$loop1.$loop2.$loop3.$loop4:$port' \
					target=_blank>ftp ftp://anonymous:anonymous@$loop1.$loop2.$loop3.$loop4:$port</a> OPEN $name With anonymous accces <font color="#4f7942">ACTIVATED. \
					</font color>(Copy link and paste in terminal.) ftp ftp://anonymous:anonymous@$loop1.$loop2.$loop3.$loop4:$port Scanned on time $nowtime2</li>" \
					>> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
				fi
			
			##-------------------------=========== SEPARATOR =============-------------------------

			if [ -f "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh" ]; then
				chmod 777 "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
				fi

			if [ -f "../ScanFTP/ScanFTP-$loop1.$loop2.sh" ]; then
				chmod 777 "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
				fi

			extraportcount=$(( $extraportcount + 1 ))
		else
			if [ "$debugcore" -eq "1" ]; then
				echo "${blue}█████████${reset} Port $port Closed / not responding. (msg$LINENO)"
				fi
				sleep 0.1
			
		fi
		sleep "$sleepflood"
		}	## end function

##-------------------------=========== SEPARATOR =============-------------------------

		httpscanports() {
		timeout 0.5 bash -c "</dev/tcp/$loop1.$loop2.$loop3.$loop4/$port" 2> /dev/null
		active=$(echo $?)
		#echo $active
		if [ "$active" -eq "0" ]; then
			weblink=$(echo -e "\e]8;;http://$loop1.$loop2.$loop3.$loop4\ahttp://$loop1.$loop2.$loop3.$loop4\e]8;;\a")
			echo "${green}█████████ $loop1.$loop2.$loop3.$loop4:$port | OPEN $name Port $port : $weblink ${reset}"
			echo "$loop1.$loop2.$loop3.$loop4:$port OPEN : $name" >> "../ScanLOGS/ScanLOGS-$ipname.txt"
			openport=1
			if test -f "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"; then
				newfilehttp=$(( $newfilehttp + 1 ))
				fi
			if [ "$newfilehttp" -eq "0" ]; then
				echo '#!/bin/bash' >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
				echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
				newfilehttp=$(( $newfilehttp + 1 ))
				fi
			echo "echo $loop1.$loop2.$loop3.$loop4:$port" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			echo "firefox $loop1.$loop2.$loop3.$loop4:$port" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"

			if [ "$htmlcreate" -eq "1" ]; then
				if test -f "../ScanHTML/ScanHTML-$loop1.$loop2.htm"; then
					newfilehtm=$(( $newfilehtm + 1 ))
					fi

				if [ "$newfilehtm" -eq "0" ]; then
					echo '<!DOCTYPE html><html><head>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
					echo '<link rel="icon" type="image/x-icon" href="../lbslogo.ico">' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
					echo '</head><body style="background-color:gray">' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
					echo "<h1 style="font-size:2vw">LostByteSoft ScannerIP. This file must be in root of ScannerIP</h1>" >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
					echo '<!-- ########################################################### --><left>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
echo '<p>LostByteSoft ScannerIP Menu : <a href='https://github.com/LostByteSoft'>LostByteSoft</a> <a href='../index.html'>Index</a> <a href='../ScannerLOGS.htm'>ScannerLOGS</a> <a href='../ScannerHTML.htm'>ScannerHTML</a> <a href='../ScanZoneMinder.htm'>ScanZoneMinder</a> <a href='../ScanERRORS.txt' target=_blank>ScanERRORS</a> <a href='../readME.md' target=_blank>readME.md</a></p>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
					newfilehtm=$(( $newfilehtm + 1 ))
					fi
				## Try this : curl -s http://8.5.42.107 | grep -oP 'href="\K[^"]+' | grep -oP 'https?://[^/]+'
				## or  this : curl -s --max-time 5 http://8.5.42.107 | grep -oP 'href="\K[^"]+' | grep -oP 'https?://[^/]+')
				website=$(curl -s --max-time 5 http://"$loop1.$loop2.$loop3.$loop4" | grep -oP 'href="\K[^"]+' | grep -oP 'https?://[^/]+')
				if [ -z "$website" ]; then
   					#echo "Website is empty, no website associated."
					echo "<li><a href='http://$loop1.$loop2.$loop3.$loop4:$port' target=_blank>http://$loop1.$loop2.$loop3.$loop4:$port</a>\
					 OPEN $name Port $port ; Scanned on time $nowtime2</li>" >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
				else
					echo "${blue}█████████ Website found on port $port :${reset} $website."
					echo "<li><a href='http://$loop1.$loop2.$loop3.$loop4:$port' target=_blank>http://$loop1.$loop2.$loop3.$loop4:$port</a> \
					OPEN $name Port $port ; Scanned on time $nowtime2 ; Associated website found : <a href='$website' target=_blank>$website</a></li>" \
					>> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"	 
				fi
			else
				if [ "$debugcore" -eq "1" ]; then
					echo "${blue}█████████${reset} Port $port Closed / not responding. (msg$LINENO)"
					fi
					sleep 0.1
			fi

			##-------------------------=========== SEPARATOR =============-------------------------
			## Test if port 80 run test for zoneminder. Writen to html file.

			if [ "$zonemindercreate" -eq "1" ]; then
				if [ "$port" -eq "80" ]; then

					if curl -m 5 -s -o /dev/null -w "%{http_code}" "http://$loop1.$loop2.$loop3.$loop4/zm/?view=console" | grep -q "^200$"; then
						echo "${green}█████████${reset} Zoneminder FOUND at http://$loop1.$loop2.$loop3.$loop4/zm/?view=console ${green}█████████${reset}"
						## Report to ScanHTML-$loop1.$loop2.htm
				echo "<li><a href='http://$loop1.$loop2.$loop3.$loop4/zm/?view=console' target=_blank>http://$loop1.$loop2.$loop3.$loop4/zm/?view=console</a> Possible ZoneMinder found ; Scanned on time $nowtime2</li>" >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
						## Report to web htm

				##-------------------------=========== SEPARATOR =============-------------------------
				## ZONEMINDER - This create a file HTM type
				if test -f "../ScanZoneMinder/ScanZoneMinder-$loop1.htm"; then
					newfilezm=$(( $newfilezm + 1 ))
					fi

				if [ "$newfilezm" -eq "0" ]; then
					echo '<!DOCTYPE html><html><head>' >> "../ScanZoneMinder/ScanZoneMinder-$loop1.htm"
					echo '<link rel="icon" type="image/x-icon" href="../lbslogo.ico">' >> "../ScanZoneMinder/ScanZoneMinder-$loop1.htm"
					echo '</head><body style="background-color:gray">' >> "../ScanZoneMinder/ScanZoneMinder-$loop1.htm"
					echo "<h1 style="font-size:2vw">LostByteSoft ScannerIP. This file must be in root of ScannerIP</h1>" >> "../ScanZoneMinder/ScanZoneMinder-$loop1.htm"
					echo '<!-- ########################################################### --><left>' >> "../ScanZoneMinder/ScanZoneMinder-$loop1.htm"
echo '<p>LostByteSoft ScannerIP Menu : <a href='https://github.com/LostByteSoft'>LostByteSoft</a> <a href='../index.html'>Index</a> <a href='../ScannerLOGS.htm'>ScannerLOGS</a> <a href='../ScannerHTML.htm'>ScannerHTML</a> <a href='../ScanZoneMinder.htm'>ScanZoneMinder</a> <a href='../ScanERRORS.txt' target=_blank>ScanERRORS</a> <a href='../readME.md' target=_blank>readME.md</a></p>' >> "../ScanZoneMinder/ScanZoneMinder-$loop1.htm"
					newfilehtm=$(( $newfilehtm + 1 ))
					fi

		echo "<li>Possible Zoneminder found : <a href='http://$loop1.$loop2.$loop3.$loop4/zm/?view=console' target=_blank>http://$loop1.$loop2.$loop3.$loop4/zm/?view=console</a>" >> "../ScanZoneMinder/ScanZoneMinder-$loop1.htm"

					#if test -f "../ScanZoneMinder/ScanZoneMinder-$loop1.htm"; then		## not needed for htm files
					#	chmod 777 "../ScanZoneMinder/ScanZoneMinder-$loop1.htm"
					#	fi

				##-------------------------=========== SEPARATOR =============-------------------------
				## ZONEMINDER - This create a file SH type
					if test -f "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"; then
						newfilezmsh=$(( $newfilezmsh + 1 ))
						fi
							if [ "$newfilezmsh" -eq "0" ]; then
								echo '#!/bin/bash' >> "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
								echo "printf '\033[8;20;65t'		# will resize the window." >> "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
								newfilezmsh=$(( $newfilezmsh + 1 ))
								fi
							echo "echo $loop1.$loop2.$loop3.$loop4:$port" >> "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
							echo "firefox $loop1.$loop2.$loop3.$loop4/zm/?view=console" >> "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
							echo 'echo --------------------====== SEPARATOR ========--------------------' >> "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
							echo 'sleep 1' >> "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
							zm=$((zm+1))
							maxlineszm=$((maxlineszm+1))
						else
							echo "${blue}█████████${reset} Port $port OPEN testing Zoneminder, NOT found. (msg$LINENO)"
						fi

					if [ "$maxlineszm" -ge "5" ]; then
						echo "echo" >> "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
						echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
						echo "echo" >> "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
						echo "echo ZoneMinder find, at this point : $zm" >> "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
						echo "echo" >> "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
						echo "read -n 1 -s -r -p 'Press key to continue loading web pages.'" >> "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
						echo "echo" >> "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
						echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
						#echo "echo" >> "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
						maxlineszm=0
						fi

				if [ -f "../ScanZoneMinder/ScanZoneMinder-$loop1.sh" ]; then
					chmod 777 "../ScanZoneMinder/ScanZoneMinder-$loop1.sh"
					fi

				fi
			fi

			##-------------------------=========== SEPARATOR =============-------------------------

		maxlineshttp=$(( $maxlineshttp + 2 ))
		extraportcount=$(( $extraportcount + 1 ))
		else
			if [ "$debugcore" -eq "1" ]; then
				echo "${blue}█████████${reset} Port $port Closed / not responding. (msg$LINENO)"
				fi
				sleep 0.1
		fi
		sleep "$sleepflood"
	}	## end function

	##-------------------------=========== SEPARATOR =============-------------------------

		## Port 21 , 80 , 443 , 8080 are ALWAYS scanned. You can remove/add ports here.

		port=21
		name='ftp'
		ftpscanports

		port=80
		name='http'
		httpscanports

		port=443
		name='https'
		httpscanports
		
		port=8080
		name='http'
		httpscanports

	## You can add port and name here, change port number and change name.
	## OR/AND you can change option scanmoreports=1

		#port=8081
		#name='http'
		#httpscanports

		##-------------------------=========== SEPARATOR =============-------------------------

		if [ "$newfileftpanonymous" -ge "10" ]; then
			echo "echo" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
			echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
			echo "echo" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
			echo "read -n 1 -s -r -p 'Press key to continue trying ftp address.'" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
			echo "echo" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
			echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
			echo "echo" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
			#echo "sleep 1" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
			newfileftpanonymous=0
			fi

		if [ "$newfileftp" -ge "10" ]; then
			echo "echo" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
			echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
			echo "echo" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
			echo "read -n 1 -s -r -p 'Press key to continue trying ftp address.'" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
			echo "echo" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
			echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
			echo "echo" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
			#echo "sleep 1" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
			newfileftp=0
			fi

		if [ "$maxlineshttp" -ge "15" ]; then
			echo "echo" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			echo "echo" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			echo "sleep 10 		## Time sleep to let page load." >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			echo "read -n 1 -s -r -p 'Press key to continue loading web pages.'" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			echo "echo" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			echo "echo" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			echo "sleep 1" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			maxlineshttp=0
			fi

		#echo openport $openport
		if [ "$openport" -eq "0" ]; then
				echo "${yellow}█████████ $loop1.$loop2.$loop3.$loop4 | NO active open port found. (msg$LINENO) ${reset}"
			else
				## no need for extra informations already shown in the main software
				if [ "$debugcore" -eq "1" ]; then
					echo "${green}█████████ $loop1.$loop2.$loop3.$loop4 | Active open port found. (msg$LINENO) ${reset}"
					fi
				sleep 0.1
			fi
		sleep "$sleepflood"

##-------------------------=========== SEPARATOR =============-------------------------
## Scan more ports.

		if [ "$scanmoreport" -eq "1" ]; then
			echo "${blue}█████████ Active | Multiples port scan. Sweeps the most common. ${reset}"
			#echo "Scanning: 20 22 23 53 69 445 981 989 1194 1337 5001 6969 8008 8887 8888 31337"

			functionscanmoreports() {
				timeout 0.5 bash -c "</dev/tcp/$loop1.$loop2.$loop3.$loop4/$port" 2> /dev/null
				active=$(echo $?)
				#echo $active
				if [ "$active" -eq "0" ]; then
					echo "${green}█████████ $loop1.$loop2.$loop3.$loop4:$port | OPEN $name Port $port : ACTIVE ${reset} (msg$LINENO)"
					echo "$loop1.$loop2.$loop3.$loop4:$port OPEN : $name" >> "../ScanLOGS/ScanLOGS-$ipname.txt"
					openextraport=0
					extraportcount=$(( $extraportcount + 1 ))
					if [ "$htmlcreate" -eq "1" ]; then
						if test -f "../ScanHTML/ScanHTML-$loop1.$loop2.htm"; then
							newfilehtm=$(( $newfilehtm + 1 ))
							fi
						if [ "$newfilehtm" -eq "0" ]; then
							echo '<!DOCTYPE html><html><head>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
							echo '<link rel="icon" type="image/x-icon" href="../lbslogo.ico">' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
							echo '</head><body style="background-color:gray">' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
							echo "<h1 style="font-size:2vw">LostByteSoft ScannerIP. This file must be in root of ScannerIP</h1>" >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
							echo '<!-- ########################################################### --><left>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
echo '<p>LostByteSoft ScannerIP Menu : <a href='https://github.com/LostByteSoft'>LostByteSoft</a> <a href='../index.html'>Index</a> <a href='../ScannerLOGS.htm'>ScannerLOGS</a> <a href='../ScannerHTML.htm'>ScannerHTML</a> <a href='../ScanZoneMinder.htm'>ScanZoneMinder</a> <a href='../ScanERRORS.txt' target=_blank>ScanERRORS</a> <a href='../readME.md' target=_blank>readME.md</a></p>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
							newfilehtm=$(( $newfilehtm + 1 ))
							fi
						echo "<li><a href='$loop1.$loop2.$loop3.$loop4:$port' target=_blank>$loop1.$loop2.$loop3.$loop4:$port</a> OPEN $name ; Scanned on time $nowtime2</li>"\
						 >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
						fi
				else
					if [ "$debugcore" -eq "1" ]; then
						echo "${blue}█████████${reset} Port $port Closed / not responding. (msg$LINENO)"
						fi
					sleep 0.1
				fi
				sleep "$sleepflood"
				}	## end function

		##-------------------------=========== SEPARATOR =============-------------------------
		## Port 21 , 80 , 443 , 8080 are ALWAYS scanned. DO NOT add theses here. You can remove/add ports.

			port=20
			name='Ftp'
			functionscanmoreports

			port=22
			name='Secure Shell (SSH)'
			functionscanmoreports

			port=23
			name='Telnet protocol'
			functionscanmoreports

			port=53
			name='dns'
			functionscanmoreports

			port=69
			name='tftp Trivial File Transfer'
			functionscanmoreports

			port=445
			name='Smb'
			functionscanmoreports

			port=981
			name='Remote HTTPS firewall'
			functionscanmoreports

			port=989
			name='ftps over ssl'
			functionscanmoreports

			port=1194
			name='OpenVPN'
			functionscanmoreports

			port=1337
			name='Torrents 1337'
			functionscanmoreports

			port=3389
			name='Ms remote desktop'
			functionscanmoreports

			port=5001
			name='https 3CX Phone'
			functionscanmoreports

			port=6969
			name='Torrents 6969'
			functionscanmoreports

			port=8008
			name='http'
			functionscanmoreports

			port=8081
			name='http'
			functionscanmoreports

			port=8887
			name='HyperVM over HTTP'
			functionscanmoreports

			port=8888
			name='HyperVM over HTTPS'
			functionscanmoreports

			port=31337
			name='Back Orifice 2k'
			functionscanmoreports

			## Add extra port, remove # change number and name.

			#port=45764
			#name='PortChecker'
			#functionscanmoreports

			if [ "$openextraport" -eq "0" ]; then
				echo "${blue}█████████ ${yellow}|${reset} $loop1.$loop2.$loop3.$loop4 : ScanMorePorts NO active open extra port found ${reset} (msg$LINENO)"
			else
				echo "${green}█████████ ${yellow}|${reset} $loop1.$loop2.$loop3.$loop4 : ScanMorePorts Active open extra port found OPEN ${reset} (msg$LINENO)"
			fi
			sleep "$sleepflood"
			openextraport=0
		fi
		}	## end function

##-------------------------=========== SEPARATOR =============-------------------------

	echo
	if [ "$askmore" -eq "1" ]; then
		echo 	"Function ${green}█████${reset} Default ACTIVE Ask Whois & Owner. 4 port must be open but no more than 8."
	else
		echo 	"Function ${blue}█████${reset} DEACTIVATED Ask more. Ask Whois & Owner. Do a whois for interesting ip."
	fi
	echo

	##-------------------------=========== SEPARATOR =============-------------------------

	askmore() {
	if [ "$askmore" -eq "1" ]; then
		if [ "$extraportcount" -ge "6" ]; then	## only for interesting ip.
			echo "${blue}█████${reset} AskMore : Whois & Owner & dig & asknslookup & askhost & debug; $loop1.$loop2.$loop3.$loop4 ${reset}"
			echo "" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "-------------------------=========== SEPARATOR =============-------------------------" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "AskMore : Whois & Owner & dig & asknslookup & askhost & debug" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "Ip of interest : $loop1.$loop2.$loop3.$loop4 Open port count = $extraportcount" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "-------------------------=========== SEPARATOR =============-------------------------" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "Ask dig :" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			dig -x $loop1.$loop2.$loop3.$loop4 >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "-------------------------=========== SEPARATOR =============-------------------------" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "Ask nslookup :" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			nslookup $loop1.$loop2.$loop3.$loop4 >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "-------------------------=========== SEPARATOR =============-------------------------" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "Ask Host :" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			host $loop1.$loop2.$loop3.$loop4 >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "-------------------------=========== SEPARATOR =============-------------------------" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "Whois $loop1.$loop2.$loop3.$loop4" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			whois -B --verbose $loop1.$loop2.$loop3.$loop4 >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "-------------------------=========== SEPARATOR =============-------------------------" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "Debug informations :" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			functiondebugScannerIP  >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "-------------------------=========== SEPARATOR =============-------------------------" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			echo "" >> "../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt"
			if [ "$htmlcreate" -eq "1" ]; then
				echo "<li>IP $loop1.$loop2.$loop3.$loop4 Answered with open port count $extraportcount ;\
				 <a href='../ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt' target=_blank> Open</a> EXTRA information file (Whois & Owner & Dig & Host & Debug).</li>"\
				 >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
				fi
		fi
	fi
	sleep "$sleepflood"
	}	## end function

##-------------------------=========== SEPARATOR =============-------------------------

	if [ "$htmlcreate" -eq "1" ]; then
			echo 	"Function ${green}█████${reset} ACTIVE HtmlCreate. Do a web pages of responding ip."
		else
			echo 	"Function ${blue}█████${reset} DEACTIVATED HtmlCreate. Do a web pages of responding ip."
		fi
	echo

##-------------------------=========== SEPARATOR =============-------------------------

	if [ "$minimize" -eq "1" ]; then
			echo 	"Function ${green}█████${reset} ACTIVE Minimize. Minimize the process after start."
		else
			echo 	"Function ${blue}█████${reset} DEACTIVATED Minimize. Minimize the process after start."
		fi
	echo

##-------------------------=========== SEPARATOR =============-------------------------

	if [ "$zonemindercreate" -eq "1" ]; then
		echo 	"Function ${green}█████${reset} Default ACTIVE ScanZoneMinder. Scan for private cameras on port 80."
	else
		echo 	"Function ${blue}█████${reset} DEACTIVATED ScanZoneMinder. Scan for private cameras on port 80."
	fi
	echo

##-------------------------=========== SEPARATOR =============-------------------------
## Sleep time sliders (sleepflood , sleepping)

	if [ "$automatic" -eq "1" ]; then
		echo 	"Function ${green}█████${reset} Automatic Anti-Flood ; The sleep time between ping/port. Default : $sleepflood , $sleepping"
	else
		sleepflood=$(zenity --timeout 30 --min-value="0" --scale --value="1" --max-value="10" --title "Sleep time ; sleepflood." \
		--text "Select the sleep time between ping test, 1 to 10 seconds. (Timeout 30 seconds to default value)\n\n\tSuggested default to 0.7 for not flood yourself (Press CANCEL).")

		sleepping=$(zenity --timeout 30 --min-value="0" --scale --value="1" --max-value="10" --title "Sleep time ; sleepping." \
		--text "Select the sleep time between port test, 1 to 10 seconds. (Timeout 30 seconds to default value)\n\n\tSuggested default to 0.5 for not flood yourself (Press CANCEL).")

		if test -z "$sleepflood"; then
				sleepflood=0.7
				fi

		if test -z "$sleepping"; then
				sleepping=0.5
				fi


		echo 	"Function ${blue}█████${reset} Manual Anti-Flood ; The sleep time between ping/port. Selected : $sleepflood , $sleepping"
	fi
	echo

	if [ "$debugcore" -eq "1" ]; then
		echo "DebugCore Msg | automatic=$automatic | sleepflood=$sleepflood | sleepping=$sleepping (msg1183)"
		echo
		sleep 3
		fi

## -------------------------===== Separator =====-------------------------
	if [ "$pingdns" -eq "1" ]; then
		echo 	"Function ${green}█████${reset} Default ACTIVE PingDns. Test if internet respond."
	else
		echo 	"Function ${red}█████${reset} DEACTIVATED PingDns. You should not deactivate this."
	fi
	echo

	##-------------------------=========== SEPARATOR =============-------------------------

	functionpingknown () {
		ping -c 2 $ipselect &> /dev/null
		active=$(echo $?)
		#echo $active
		if [ "$active" -eq "0" ]; then
			echo "${green} ██████████████████ $namepc ACTIVE $ipselect ██████████████████ ${reset}"
			echo
			fi
		if [ "$active" -ge "1" ]; then
			echo "${red} ██████████████████ $namepc OFFLINE $ipselect ██████████████████ ${reset}"
			echo
			echo ERROR.... check your connexion/internet/lan/cables.
			echo
			sleep=10
			functionsleepbar
			echo
			fi
		}	## end function

	##-------------------------=========== SEPARATOR =============-------------------------

	if [ "$pingdns" -eq "1" ]; then
		part=$((part+1))
		echo "-------------------------===== Section $part =====-------------------------"
		echo "DNS servers ping test. They are extremely reliable."
		echo
		echo "If they do not work the problem is your connection."
		echo

		## -----===== MINI SEPARATOR =====-----
			if [ "$pingdnsCloudflare" -eq "1" ]; then
			namepc="Cloudflare Dns 1"
				ipselect=1.1.1.1
				functionpingknown

			namepc="Cloudflare Dns 2"
				ipselect=1.0.0.1
				functionpingknown
			fi
		## -----===== MINI SEPARATOR =====-----
			if [ "$pingdnsgogle" -eq "1" ]; then
			namepc="Google Dns 1"
				ipselect=8.8.8.8
				functionpingknown

			namepc="Google Dns 2"
				ipselect=8.8.4.4
				functionpingknown
			fi
		## -----===== MINI SEPARATOR =====-----
			if [ "$pingdnsopendns" -eq "1" ]; then
			namepc="Open Dns 1"
				ipselect=208.67.222.222
				functionpingknown

			namepc="Open Dns 2"
				ipselect=208.67.220.220
				functionpingknown
			fi
		## -----===== MINI SEPARATOR =====-----
			if [ "$pingdnsquad9" -eq "1" ]; then
			namepc="Dns Quad9 1"
				ipselect=9.9.9.9
				functionpingknown

			namepc="Dns Quad9 2"
				ipselect=149.112.112.112
				functionpingknown
			fi
		## -----===== MINI SEPARATOR =====-----
	fi

##-------------------------=========== SEPARATOR =============-------------------------

	if [ "$debugScannerIP" -eq "1" ]; then
		codenum=1327
		functiondebugScannerIP
		echo
		sleep "0.5"
		fi

##-------------------------=========== SEPARATOR =============-------------------------
## Running checker. Only one instance is allowed.

	## Local var
	choice=5

function_zenitywait () {
	zenity --question --width 400 --height 150 --title="ScanIP checker, Locked-up." \
	--text="ScanIP_WAN_V_$ipname.sh is already running.\n\nOnly one instance is allowed. (Click YES if program/pc has crashed.)\n\nPress NO to QUIT or press YES to remove lock-up and continue."

	choice=$?
	#echo "choice : $choice"
	
	if [ $choice -eq 0 ] ; then
		rm "/dev/shm/$ipname.lock" 2> /dev/null
		sleep "0.5"	## watch too fast for the file, need time to erase
		echo
	else
		echo
		echo "Finished. Version $version. Exiting..."
		echo
		sleep=2
		functionsleepbar
		echo
		exit 0
	fi
	}	## End function

	## -----===== MINI SEPARATOR =====-----

	while [ -f "/dev/shm/$ipname.lock" ]	## Watch if file exist
		do
		part=$((part+1))
		echo "-------------------------===== Section $part =====-------------------------"
		echo
		echo "${red}█████ ScanIP_WAN_V_$ipname.sh is already running. █████${reset}"
		echo
		echo "${red}█████ Only one instance is allowed. █████${reset}"
		echo
		echo "${red}█████ Click YES if program/pc has crashed. █████${reset}"
		#echo "Debug : If file exist goto loop checker !"
		function_zenitywait
		done

	## create a lock
	touch "/dev/shm/$ipname.lock"

##-------------------------=========== SEPARATOR =============-------------------------

if [ "$debugScannerIP" -eq "1" ]; then
	codenum=1383
	functiondebugScannerIP
	echo
	sleep "0.5"
	fi

##-------------------------=========== SEPARATOR =============-------------------------

function handle_interrupt {

	echo
	watchdog	## Needed to write the last scanned ip in file ScanLOGS.
	echo
	echo "Finished. Version $version. Writing data at $loop1.$loop2.$loop3.$loop4 & exiting..."
	echo
	rm "/dev/shm/$ipname.lock" 2> /dev/null
	sleep 1

	part=$((part+1))
	echo "-------------------------===== Section $part =====-------------------------"

		echo "Software lead out. Version 7.35"
			echo

		## -------------------------===== Start of eula =====-------------------------
			functioneula() {
				printf '\033[8;33;90t'		## Will resize the window.
				echo
				echo "End-user license agreement (eula)"
				echo
			 	echo "JUST DO WHAT THE F*** YOU WANT WITH THE PUBLIC LICENSE"
				echo	 	
			 	echo "Version 3.1415926532 (January 2022)"
				echo
			 	echo "TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION"
				echo
				echo "Everyone is permitted to copy and distribute verbatim or modified copies of"
			 	echo "this license document."
				echo
			 	echo "As is customary and in compliance with current global and interplanetary"
			 	echo "regulations, the author of these pages disclaims all liability for the"
			 	echo "consequences of the advice given here, in particular in the event of partial"
			 	echo "or total destruction of the material, Loss of rights to the manufacturer"
			 	echo "warranty, electrocution, drowning, divorce, civil war, the effects of radiation"
			 	echo "due to atomic fission, unexpected tax recalls or encounters with"
			 	echo "extraterrestrial beings elsewhere."
				echo
			 	echo "YOU MUST ACCEPT THESES TERMS OR NOTHING WILL HAPPEN."
				echo
			 	echo "LostByteSoft no copyright or copyleft we are in the center."
				echo
			 	echo "You can send your request and your Christmas wishes to this address:"
				echo
			 	echo "	Père Noël"
			 	echo " 	Pôle Nord, Canada"
			 	echo "	H0H 0H0"
			 	echo
			 	}

		## -------------------------===== Separator =====-------------------------
			echo "Debug random : id=$id part=$part primeerror=$primeerror error=$error random=$random random2=$random2"
			echo
			echo "Debug : findsubfolders=$findsubfolders lowercase=$lowercase detox=$detox automatic=$automatic"
			echo "	debug=$debug debugcore=$debugcore minimize=$minimize maximize=$maximize reseize=$reseize noquit=$noquit"
			echo
			echo -------------------------===== End of Bash ======-------------------------
			echo
			echo "Finish... with numbers of actions : $part"
			echo "This script take $(( SECONDS - start )) seconds to complete."
			echo "Started Time : $now"
			date=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
			echo "Time needed: $date"
			now5=$(date +"%Y-%m-%d_%A_%H:%M:%S")
			echo "Current time : $now5"
			echo

		## -------------------------===== Separator =====-------------------------

			if [ "$logs" -eq "1" ]; then
				echo " " >> /dev/shm/logs.txt
				echo "	Time now : $now5" >> /dev/shm/logs.txt
				echo "	Time needed : $date" >> /dev/shm/logs.txt
				echo "	Started Time : $now" >> /dev/shm/logs.txt
				echo "	Name of software : $me" >> /dev/shm/logs.txt
				echo "	Debug random : id=$id part=$part primeerror=$primeerror error=$error random=$random random2=$random2" >> /dev/shm/logs.txt
				echo "	Debug : findsubfolders=$findsubfolders lowercase=$lowercase detox=$detox automatic=$automatic debug=$debug debugcore=$debugcore \
				minimize=$minimize maximize=$maximize reseize=$reseize noquit=$noquit" >> /dev/shm/logs.txt
				echo "	File (If any used) : $file" >>/dev/shm/logs.txt
				echo " " >>/dev/shm/logs.txt
				echo "--------------------====== SEPARATOR ========--------------------" >>/dev/shm/logs.txt
				fi

		## -------------------------===== Separator =====-------------------------
		## Exit, wait or auto-quit.

			echo -ne "\033]0;FINISH-$SCRIPT_NAME\a"

			if [ "$primeerror" -ge "1" ]; then
				printf '\033[8;20;90t'		## Will resize the window.
				echo "${red}████████████████████████████████████████████${reset}	${yellow}████████████████████████████████████████${reset}"
				echo "${red}██                                        ██${reset}	${yellow}██                                    ██${reset}"
				echo "${red}██     Unknown entry event... ERROR(S)    ██${reset}	${yellow}██       Time needed : $date       ██${reset}"
				echo "${red}██                                        ██${reset}	${yellow}██                                    ██${reset}"
				echo "${red}████████████████████████████████████████████${reset}	${yellow}████████████████████████████████████████${reset}"
				echo
				echo "Numbers of error(s) : $primeerror"
				echo
				echo "Terminated : $me"
				echo
				noquit=1
			else

				printf '\033[8;20;90t'		## Will resize the window.
				echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
				echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
				echo "${green}██         NO errors detected.        ██${reset}	${blue}██       Time needed : $date       ██${reset}"
				echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
				echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
				echo
				echo "Terminated : $me"
				echo
			fi

			if [ "$debugcore" -eq "1" ]; then
				functiondebugScannerIP
				fi

			## -------------------------===== Separator =====-------------------------
			if [ "$noquit" -eq "1" ]; then
				if [ "$primeerror" -eq "0" ]; then
						echo "${blue}	█████████████████ NO exit activated ███████████████████${reset}"
					else
						echo "${orange}	█████████████████ NO exit activated ███████████████████${reset}"
					fi
				echo
				while true; do 
					echo "Press ANYKEY to show EULA, ENTER or SPACE to EXIT." 
					read -r -n 1 -s input_key
					if [[ -n "input_key" ]]; then 
						if [[ "input_key" == " " || -z "$input_key" ]]; then 
							break 
						else
							functioneula
							read -n 1 -s -r -p "Press any key to EXIT." 
							echo
							break
						fi 
					else
							break 
						fi 
					done
					echo
					fi

			## -------------------------===== Separator =====-------------------------

			echo "${green}	███████████████ Finish, quit in 3 seconds █████████████████${reset}"
			echo
			if [ "$debugcore" -eq "0" ]; then
				functionsmallbar
				fi
			echo
			exit 0

	}

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
	echo "The core/code program."
	echo
	echo "Scanner ISP. Global version $globalversion"
	echo
	echo "Scanner CoreVersion $version . WatchDog are used for watching if something break."
	echo
	echo "Start scan ip: $loop1.$loop2.$loop3.$loop4 Maximum scan ip: $endip1.$endip2.$endip3.$endip4"
	echo
	echo "You can close this windows and restart it later to continue. (Do not erase the log file)."
	echo
	echo "${blue}█████ Press "atl gr + c" to friendly quit. █████${reset}"
	echo

## -------------------------===== Separator =====-------------------------
## Finding last ip scanned or start a new log.

	if [ "$debugScannerIP" -eq "1" ]; then
		codenum=1575
		functiondebugScannerIP
		echo
		sleep "0.5"
		fi

	lastscan=0
	fileexist=0

	if test -f "../ScanLOGS/ScanLOGS-$ipname.txt"; then
		lastscan=$( tail -1 "../ScanLOGS/ScanLOGS-$ipname.txt" | head -1 )
		fileexist=1
		fi

	if [ "$debugcore" -eq "1" ]; then
		echo "ScanLOGS-$ipname.txt"
		echo fileexist = $fileexist
		echo ipname = $ipname
		echo lastscan = $lastscan
		#echo ip_address = $ip_address
		echo "../ScanLOGS/ScanLOGS-$ipname.txt"
		echo
		sleep "0.5"
		fi

	if [ "$fileexist" -eq "1" ]; then	## line 1500

		if [[ "$lastscan" == *$endip1.$endip2.$endip3.$endip4* ]]; then
			echo "${red}████████████████████████████████████████████████████████████████████████████${reset}"
			echo
			echo "ATTENTION : Program finished, all ip are scanned for this range. RESTART ?"
			echo "Erase all logs files associated to $loop1.$loop2.X.X before make a new run!"
			echo
			echo "${red}████████████████████████████████████████████████████████████████████████████${reset}"
			echo
			fi

		if [[ "$lastscan" == *OPEN* ]]; then
			lastscan=$(echo "$lastscan" | grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')
			IFS='.'
			read -r loop10 loop20 loop30 loop40 <<< "$lastscan"
			if [ "$debugcore" -eq "1" ]; then
				echo "Error: The variable contains forbidden *open* character."
				echo loop1 = $loop1
				echo loop2 = $loop2
				echo loop3 = $loop3
				echo loop4 = $loop4
				echo loop10 = $loop10
				echo loop20 = $loop20
				echo loop30 = $loop30
				echo loop40 = $loop40
				echo lastscan = $lastscan
				#echo ip_address = $ip_address
				sleep "0.5"
				fi
			fi

		if [[ "$lastscan" == *WatchDog* ]]; then
			lastscan=$(echo "$lastscan" | grep -oP 'executed at \K[\d\.]+')
			IFS='.'
			read -r loop10 loop20 loop30 loop40 <<< "$lastscan"
			if [ "$debugcore" -eq "1" ]; then
				echo "The variable contains forbidden *WatchDog* character."
				echo loop1 = $loop10
				echo loop2 = $loop20
				echo loop3 = $loop30
				echo loop4 = $loop40
				echo loop10 = $loop10
				echo loop20 = $loop20
				echo loop30 = $loop30
				echo loop40 = $loop40
				echo lastscan = $lastscan
				echo
				sleep 1
				fi
			fi

		##-------------------------=========== SEPARATOR =============-------------------------
		## Restart at ip X.X.X.X

		if [ "$automatic" -eq "0" ]; then
			if zenity --question --text="ScannerIP. Log file found.\n\nNO restart new scan at : $loop1.$loop2.$loop3.$loop4\n\nYES continue with ip : $loop10.$loop20.$loop30.$loop40" --width=400
				then
					loop1=$loop10
					loop2=$loop20
					loop3=$loop30
					loop4=$loop40
					echo "${green}█████████${reset} Will restart scanning at : $loop1.$loop2.$loop3.$loop4. Continue in the same log file. (msg$LINENO)"
					echo
				else
					echo "${blue}█████████${reset} Restart to default ip : $loop1.$loop2.$loop3.$loop4. Continue in the same log file. (msg$LINENO)"
					echo
				fi
		else
					loop1=$loop10
					loop2=$loop20
					loop3=$loop30
					loop4=$loop40
					echo "${green}█████████${reset} Will restart scanning at : $loop1.$loop2.$loop3.$loop4. Continue in the same log file (msg$LINENO)"
			echo
		fi

	fi	## end of line 1500

	if [ "$debugcore" -eq "0" ]; then
		sleep=6
		functionsleepbar
		echo
	else
		sleep=1
		functionsleepbar
		echo
	fi

##-------------------------=========== SEPARATOR =============-------------------------

	if [ "$debugcore" -eq "0" ]; then
		sleep2=0.15			## Minimum ?
		printf '\033[8;40;90t'		## will resize the window.
		sleep "$sleep2"
		printf '\033[8;36;91t'		## will resize the window.
		sleep "$sleep2"
		printf '\033[8;32;93t'		## will resize the window.
		sleep "$sleep2"
		printf '\033[8;28;96t'		## will resize the window.
		sleep "$sleep2"
		printf '\033[8;24;99t'		## will resize the window.
		sleep "$sleep2"
		printf '\033[8;20;101t'		## will resize the window.
		sleep "$sleep2"
		printf '\033[8;16;103t'		## will resize the window.
		sleep "$sleep2"
		printf '\033[8;12;105t'		## will resize the window.
		sleep "$sleep2"
		fi

##-------------------------=========== SEPARATOR =============-------------------------

if [ "$minimize" -eq "1" ]; then
	pid=$(echo $PPID)
	if [ "$xdotool" -eq "1" ]; then
			echo "${blue}██████ Minimize activated. ${yellow}pid = $pid${reset} ${blue}██████${reset}"
			echo
			sleep "0.2"
			#echo pid = $pid
			window_id=$(xdotool search --pid $pid | tail -1)
			sleep "0.2"
			#echo $window_id
			xdotool windowminimize "$window_id"
			sleep "0.2"
		else
			echo "${yellow}██████ Minimize. pid = $pid${reset} ${yellow}██████${reset}"
		fi
	fi

	if [ "$debugScannerIP" -eq "1" ]; then
		codenum=1732
		functiondebugScannerIP
		echo
		read -n 1 -s -r -p "Variable checker (NO DATA READ) - debugcore - Press any key to continue." 
		echo
		echo
		fi

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
### The main loop of the software, everything is running in theses loops.

	if [ "$debugcore" -eq "1" ]; then
		watchdog
		fi

	echo
	echo "${blue}█████████${green}█████████ Start scanning IP... ${green}█████████${blue}█████████${reset} Wait $sleepflood seconds."
	sleep "$sleepflood"

while true; do
	trap handle_interrupt SIGINT

		##-------------------------=========== SEPARATOR =============-------------------------
		## The scanning program start here.

		echo
		while [ "$loop1" -le "$maxip1" ]
		do

			##-------------------------=========== SEPARATOR =============-------------------------

			while [ "$loop2" -le "$maxip2" ]
			do

				##-------------------------=========== SEPARATOR =============-------------------------

				while [ "$loop3" -le "$maxip3" ]
				do

					##-------------------------=========== SEPARATOR =============-------------------------

					while [ "$loop4" -le "$maxip4" ]
					do
						if [ "$loop1.$loop2.$loop3.$loop4" = "$endip1.$endip2.$endip3.$endip4" ]; then
							break
							fi
						nowtime2=$(date +"%Y-%m-%d %H:%M:%S")
						nowtime3=$(date +"%H:%M")
						#weblink=$(echo -e "\e]8;;http://$loop1.$loop2.$loop3.$loop4\ahttp://$loop1.$loop2.$loop3.$loop4\e]8;;\a")
						#echo "ScanISP ; Scan now $loop1.$loop2.$loop3.$loop4 ; $weblink ; Max scan ip $endip1.$endip2.$endip3.$endip4 ; $nowtime2"

						## run a watchdog if erreor was detected
						if [ "$watchdogerror" -eq "1" ]; then
							watchdog			
							fi
							
echo "${green}ScannerIP${reset} | ${blue}Scan${reset} $loop1.$loop2.$loop3.$loop4 ${yellow}|${reset} MaxIP $endip1.$endip2.$endip3.$endip4 ${yellow}|${reset} File $newftpfound FAno $newftpanonymousfound ${green}|${reset} Web $newfilehtm Zm $zm ${green}|${reset} DogExe $watchdogexe ${yellow}|${reset} T $nowtime3"
						if [ "$debugScannerIP" -eq "1" ]; then
echo "DebugCore Data | newfilehttp=$newfilehttp | newfileftp=$newfileftp | maxlineshttp=$maxlineshttp | Scan=$scansession"
echo "DebugCore WDog | test10times=$test10times | maxlooptimes=$maxlooptimes | watchdogerror=$watchdogerror | 100=$watchdogerror100 | 010=$watchdogerror010 | 001=$watchdogerror001 | 011=$watchdogerror011"
							fi
						scansession=$((scansession+1))
						#echo Debug active 1 = $active
						
						## ping The ping utility Sends ICMP Echo Request packets to test reachability
						## -c 1 Count = 1 Send only one ping packet and then stop
						##-W 0.3 Wait timeout = 0.3 seconds Wait up to 0.3 seconds (300 milliseconds) for a reply ## now $sleeptime 
						## 1.2.3.4 Target IP address The host you're trying to reach
						if [ "$debugScannerIP" -eq "1" ]; then
							echo "DebugCore Data | sleepflood = $sleepflood sleepping = $sleepping"
							fi
						
						ping -W "$sleepping" -c 1 "$loop1.$loop2.$loop3.$loop4" &> /dev/null
						active=$(echo $?)
						if [ "$active" -eq "0" ]; then
							sleep "$sleepflood"
							echo "${green}█████████${reset} $loop1.$loop2.$loop3.$loop4 | Responding IP : Testing open ports. (msg$LINENO)"
							answer=$((answer+1))
							functionscanports
							#echo openport $openport
							#if [ "$openport" -eq "0" ]; then
								## If you want all ip answered written in the ScanLOGS.
								#echo "$loop1.$loop2.$loop3.$loop4 Ip responded no open port." >> "../ScanLOGS/ScanLOGS-$ipname.txt"
								## If you want all ip answered written in the HTML.
								#if [ "$htmlcreate" -eq "1" ]; then
								#	echo "<li>$loop1.$loop2.$loop3.$loop4 The IP address has answered but no open port.</li>"\
								#	 >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
								#	fi
								#fi
							else
								#echo "${blue}█████████${reset} Scanned ip is NOT responding."
								noanswer=$((noanswer+1))
							fi
						#echo Debug active 2 = $active
						if [ "$active" -eq "2" ]; then		## watchdog detector. Not in loop.
							#echo WatchDogDeactivated
							watchdog
							fi
						#echo Debug active 3 = $active
						## Loop 4 4e octet
						if [ "$debugScannerIP" -eq "1" ]; then
							codenum=1830
							functiondebugScannerIP				
							fi
						if [ "$askmore" -eq "1" ]; then		##Before loop4 + 1
							askmore
							fi
						loop4=$(( $loop4 + 1 ))
						## Run a ping ip to check at each test ip if connection is down.
						#functionping
						##"Running WatchDog loop 4. At each 1 ip tested do a WatchDog. Do only one watch, best at loop 3"
						#watchdog
						extraportcount=0
						sleep "$sleepflood"		## Slowed down the ping process because it's flooding you ...
						done
	
					##-------------------------=========== SEPARATOR =============-------------------------

					if [ "$loop1.$loop2.$loop3.$loop4" = "$endip1.$endip2.$endip3.$endip4" ]; then
							break
						else
							loop4=0
						fi

					loop3=$(( $loop3 + 1 ))
					## Loop 3 3e octet
						## Put new files possible here with 0. This will permit the creation of new file.
						newfilehttp=0
						newfilehtm=0
						newfileftp=0
						newfileftpanonymous=0
						newfilezm=0
						newfilezmsh=0

					if [ "$debugScannerIP" -eq "1" ]; then
						echo "DebugCore Data | Old FTP data : newfileftp=$newfileftp | newfileftpanonymous=$newfileftpanonymous"
						echo "DebugCore Data | Reset FTP data : newfileftp=$newfileftp | newfileftpanonymous=$newfileftpanonymous"
						echo "DebugCore Data | Old HTM data : newfilehttp=$newfilehttp | newfilehtm=$newfilehtm"
						echo "DebugCore Data | Reset HTM data : newfilehttp=$newfilehttp | newfilehtm=$newfilehtm"
						fi

					##"Running WatchDog loop 3. At each 256 ip tested do a WatchDog. Do only one watch, best at loop 3"
					watchdog
					if [ "$watchdogreport" -eq "1" ]; then
					echo "WatchDog | ALL OK | ExternalIP $extip5 | GatewayIP $gateip5 | LocalIP $locip5 | DnsIp $dnsip5 | Exe at $loop1.$loop2.$loop3.$loop4 | $nowtime2" >> "../ScanLOGS/WatchDogLOGS-$loop1.txt"
					echo "WatchDog | CoreVersion=$version | GlobalVersion=$globalversion | RunTime=$runtime" >> "../ScanLOGS/WatchDogLOGS-$loop1.txt"
echo "WatchDog | FileFound $newfileftp | FileFoundAnonymous $newfileftpanonymous | WebAccess $newfilehtm | ZoneMinder $zm | IpScanned $scansession | answer $answer | NoAnswer $noanswer" >> "../ScanLOGS/WatchDogLOGS-$loop1.txt"
						fi
					if [ "$debugcore" -eq "1" ]; then
						functiondebugScannerIP
						fi
					done
			
				##-------------------------=========== SEPARATOR =============-------------------------

				if [ "$loop1.$loop2.$loop3.$loop4" = "$endip1.$endip2.$endip3.$endip4" ]; then
						break
					else
						loop3=0
					fi
				loop2=$(( $loop2 + 1 ))
				## Loop2 2e octet
					## Put new files possible here with 0. This will permit the creation of new file.
					newfilehttp=0
					newfilehtm=0
					newfileftp=0
					newfileftpanonymous=0
					newfilezm=0
					newfilezmsh=0
				##"Running WatchDog loop 2. At each 65 536 ip tested do a WatchDog. Do only one watch, best at loop 3"
				#watchdog
				done
		
			##-------------------------=========== SEPARATOR =============-------------------------

			if [ "$loop1.$loop2.$loop3.$loop4" = "$endip1.$endip2.$endip3.$endip4" ]; then
					break
				else
					loop2=0
				fi
			loop1=$(( $loop1 + 1 ))
			## Loop 1 1st octet
				## Put new files possible here with 0. This will permit the creation of new file.
				newfilehttp=0
				newfilehtm=0
				newfileftp=0
				newfileftpanonymous=0
				newfilezm=0
				newfilezmsh=0
			##"Running WatchDog loop 1. At each 16 777 217 ip tested do a WatchDog. Do only one watch, best at loop 3"
			## Need to scan 6.47 ip at a second to do all 16 777 217 ip in 30 days.
			#watchdog
			done

		##-------------------------=========== SEPARATOR =============-------------------------

		if [ "$loop1.$loop2.$loop3.$loop4" = "$endip1.$endip2.$endip3.$endip4" ]; then
				break
			else
				loop1=0
			fi
		done

## END scanning program loop.

##-------------------------=========== SEPARATOR =============-------------------------
## normal exit when all ip are scanned.

	echo
	codenum='Exit (1936)'
	functiondebugScannerIP >> "../ScanLOGS/ScanLOGS-$ipname.txt"
	echo
	watchdog	## Needed to write the good/last ip in file ScanLOGS.
	echo
	echo "You have reached the end of the countdown. Last scan ip: $loop1.$loop2.$loop3.$loop4"
	echo
	echo "Finished. Version $version. Writing data at $loop1.$loop2.$loop3.$loop4 & exiting..."
	echo
	rm "/dev/shm/$ipname.lock" 2> /dev/null
	echo
	sleep=3
	functionsleepbar

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Software lead out. Version 7.36"
	echo

## -------------------------===== Start of eula =====-------------------------
	functioneula() {
		printf '\033[8;33;90t'		## Will resize the window.
		echo
		echo "End-user license agreement (eula)"
		echo
	 	echo "JUST DO WHAT THE F*** YOU WANT WITH THE PUBLIC LICENSE"
		echo	 	
	 	echo "Version 3.1415926532 (January 2022)"
		echo
	 	echo "TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION"
		echo
		echo "Everyone is permitted to copy and distribute verbatim or modified copies of"
	 	echo "this license document."
		echo
	 	echo "As is customary and in compliance with current global and interplanetary"
	 	echo "regulations, the author of these pages disclaims all liability for the"
	 	echo "consequences of the advice given here, in particular in the event of partial"
	 	echo "or total destruction of the material, Loss of rights to the manufacturer"
	 	echo "warranty, electrocution, drowning, divorce, civil war, the effects of radiation"
	 	echo "due to atomic fission, unexpected tax recalls or encounters with"
	 	echo "extraterrestrial beings elsewhere."
		echo
	 	echo "YOU MUST ACCEPT THESES TERMS OR NOTHING WILL HAPPEN."
		echo
	 	echo "LostByteSoft no copyright or copyleft we are in the center."
		echo
	 	echo "You can send your request and your Christmas wishes to this address:"
		echo
	 	echo "	Père Noël"
	 	echo " 	Pôle Nord, Canada"
	 	echo "	H0H 0H0"
	 	echo
	 	}

## -------------------------===== Separator =====-------------------------
	echo "Debug random : id=$id part=$part primeerror=$primeerror error=$error random=$random random2=$random2"
	echo
	echo "Debug : findsubfolders=$findsubfolders lowercase=$lowercase detox=$detox automatic=$automatic"
	echo "	debug=$debug debugcore=$debugcore minimize=$minimize maximize=$maximize reseize=$reseize noquit=$noquit"
	echo
	echo -------------------------===== End of Bash ======-------------------------
	echo
	echo "Finish... with numbers of actions : $part"
	echo "This script take $(( SECONDS - start )) seconds to complete."
	echo "Started Time : $now"
	date=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
	echo "Time needed: $date"
	now5=$(date +"%Y-%m-%d_%A_%H:%M:%S")
	echo "Current time : $now5"
	echo

## -------------------------===== Separator =====-------------------------

	if [ "$logs" -eq "1" ]; then
		echo " " >> /dev/shm/logs.txt
		echo "	Time now : $now5" >> /dev/shm/logs.txt
		echo "	Time needed : $date" >> /dev/shm/logs.txt
		echo "	Started Time : $now" >> /dev/shm/logs.txt
		echo "	Name of software : $me" >> /dev/shm/logs.txt
		echo "	Debug random : id=$id part=$part primeerror=$primeerror error=$error random=$random random2=$random2" >> /dev/shm/logs.txt
		echo "	Debug : findsubfolders=$findsubfolders lowercase=$lowercase detox=$detox automatic=$automatic debug=$debug debugcore=$debugcore \
		minimize=$minimize maximize=$maximize reseize=$reseize noquit=$noquit" >> /dev/shm/logs.txt
		echo "	File (If any used) : $file" >>/dev/shm/logs.txt
		echo " " >>/dev/shm/logs.txt
		echo "--------------------====== SEPARATOR ========--------------------" >>/dev/shm/logs.txt
		fi

## -------------------------===== Separator =====-------------------------
## Exit, wait or auto-quit.

	echo -ne "\033]0;FINISH-$SCRIPT_NAME\a"

	if [ "$primeerror" -ge "1" ]; then
		printf '\033[8;20;90t'		## Will resize the window.
		echo "${red}████████████████████████████████████████████${reset}	${yellow}████████████████████████████████████████${reset}"
		echo "${red}██                                        ██${reset}	${yellow}██                                    ██${reset}"
		echo "${red}██     Unknown entry event... ERROR(S)    ██${reset}	${yellow}██       Time needed : $date       ██${reset}"
		echo "${red}██                                        ██${reset}	${yellow}██                                    ██${reset}"
		echo "${red}████████████████████████████████████████████${reset}	${yellow}████████████████████████████████████████${reset}"
		echo
		echo "Numbers of error(s) : $primeerror"
		echo
		echo "Terminated : $me"
		echo
		noquit=1
	else

		printf '\033[8;20;90t'		## Will resize the window.
		echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "${green}██         NO errors detected.        ██${reset}	${blue}██       Time needed : $date       ██${reset}"
		echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo
		echo "Terminated : $me"
		echo
	fi

	## -------------------------===== Separator =====-------------------------
	if [ "$noquit" -eq "1" ]; then
		if [ "$primeerror" -eq "0" ]; then
				echo "${blue}	█████████████████ NO exit activated ███████████████████${reset}"
			else
				echo "${orange}	█████████████████ NO exit activated ███████████████████${reset}"
			fi
		echo
		while true; do 
			echo "Press ANYKEY to show EULA, ENTER or SPACE to EXIT." 
			read -r -n 1 -s input_key
			if [[ -n "input_key" ]]; then 
				if [[ "input_key" == " " || -z "$input_key" ]]; then 
					break 
				else
					functioneula
					read -n 1 -s -r -p "Press any key to EXIT." 
					echo
					break
				fi 
			else
					break 
				fi 
			done
			echo
			fi

	## -------------------------===== Separator =====-------------------------
	if [ "$debug" -eq "1" ]; then
		debug
		echo "${blue}		█████ DEBUG WAIT | Program finish. █████${reset}"
		echo
		read -n 1 -s -r -p "Press any key to EXIT or press X to close this windows !"
		echo
		echo
		exit 0
		fi

	## -------------------------===== Separator =====-------------------------

	echo "${green}	███████████████ Finish, quit in 3 seconds █████████████████${reset}"
	echo
	if [ "$debugcore" -eq "0" ]; then
		sleep=3
		functionsmallbar
	else
		sleep=1
		functionsmallbar
	fi
	echo
	exit 0

## -------------------------===== End of file =====-------------------------
