#!/bin/bash
#!/usr/bin/ffmpeg

	printf '\033[8;35;90t'	## minimum of 88 for graphics.
	version=2025-05-05_Monday_07:25:17

echo -------------------------===== Start of bash ====-------------------------
	## Time, host name, file name, pid.
		start=$SECONDS
		now=$(date +"%Y-%m-%d_%A_%H:%M:%S")	## time now
		hostname=$(cat /etc/hostname)
		#hostname="${hostname%-pc}"
		me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
		id=$(echo $PPID)			## current process id of the bash process
	## General purposes variables. Needed before program to random variables.
	## All general variables must be 0, DO NOT CHANGE.
		part=0		## Don't change this value.
		primeerror=0	## Ending error detector, do not change.
		error=0		## Test error, do not change.
	## Auto-generated variables. DO NOT CHANGE.
		random=$(shuf -i 4096-131072 -n 1)	# Used for temp folders. A big number hard to guess for security reasons.
		random2=$RANDOM
	## All general variables must be 0 or 1
		automatic=0	## automatic without (at least minimal) dialog box. (0 or 1)
		debug=0		## test debug. (0 or 1 debug mode)
		noquit=0	## noquit option. (0 or 1)
		lowercase=0	## Change all to lowercase option. (0 or 1)
		reseize=1	## Reseize windows option. (0 or 1)
	## Colors codes
		red=$(tput setaf 1)
		green=$(tput setaf 2)
		yellow=$(tput setaf 11)
		blue=$(tput setaf 12)
		orange=$(tput setaf 9)
		reset=$(tput sgr0)

##-------------------------=========== SEPARATOR =============-------------------------
	echo
	echo "${yellow}  ░▒▓█▓▒░      ░▒▓██████▓▒░ ░▒▓███████▓▒░▒▓████████▓▒░ "
	echo "${yellow}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${yellow}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${yellow}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░   ░▒▓█▓▒░     "
	echo "${yellow}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░  ░▒▓█▓▒░     "
	echo "${yellow}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░  ░▒▓█▓▒░     "
	echo "${yellow}  ░▒▓████████▓▒░▒▓██████▓▒░░▒▓███████▓▒░   ░▒▓█▓▒░     ${reset}"
	echo
	echo "${green}	  ░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓████████▓▒░ "
	echo "${green}	  ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░        "
	echo "${green}	  ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░        "
	echo "${green}	  ░▒▓███████▓▒░ ░▒▓██████▓▒░   ░▒▓█▓▒░   ░▒▓██████▓▒░   "
	echo "${green}	  ░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░      ░▒▓█▓▒░   ░▒▓█▓▒░        "
	echo "${green}	  ░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░      ░▒▓█▓▒░   ░▒▓█▓▒░        "
	echo "${green}	  ░▒▓███████▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░   ░▒▓████████▓▒░ ${reset}"
	echo
	echo "${yellow}		   ░▒▓███████▓▒░░▒▓██████▓▒░░▒▓████████▓▒░▒▓████████▓▒░ "
	echo "${yellow}		  ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${yellow}		  ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${yellow}		   ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░    ░▒▓█▓▒░     "
	echo "${yellow}			 ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${yellow}			 ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${yellow}		  ░▒▓███████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░         ░▒▓█▓▒░  ${reset}"
	echo

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
	sleep 0.5
	echo "Software lead-in. LostByteSoft ; https://github.com/LostByteSoft"
	echo
	echo "NEVER remove dual ## in front of lines. Theses are code annotations."
	echo "You can test / remove single # for testing purpose."
	echo
	echo "Current time : $now"
	echo
	echo "Common variables, you can changes theses variables as you wish to test."
	echo "Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random random2=$random2"
	echo "		primeerror=$primeerror lowercase=$lowercase id=$id reseize=$reseize"
	echo
	echo "You are running this script from : $hostname"
	echo
	echo "Running software file : $(dirname "$0")/"
	echo
	echo "Running job file : $me"
	echo
	echo "Version : $version"
	echo
	echo "Read me for this file : (EULA at the end of file, open in text.)"
	echo
	echo "By LostByteSoft, no copyright or copyleft. https://github.com/LostByteSoft"
	echo
	echo "Don't hack paid software, free software exists and does the job better."
	echo

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo Specific softwares variables, you can change theses variables.
	echo
	echo "0 or 1 , 0 deactivated , 1 activated"
	echo
	findsubfolders=0
	echo findsubfolders=$findsubfolders
	lowercases=0
	echo lowercase=$lowercase
	detox=0
	echo detox=$detox
	automatic=1
	echo automatic=$automatic
	debug=0
	echo debug=$debug , default 0
	minimize=0
	echo minimize=$minimize , default 0
	maximize=0
	echo maximize=$maximize , default 0
	resize=1
	echo resize=$resize , default 1
	noquit=0
	echo noquit=$noquit , default 0
	echo
	watchdog=1
	echo watchdog=$watchdog , 0 or 1 , 0 deactivated , 1 activated , default 1
	scanmoreport=0
	echo scanmoreport=$scanmoreport , 0 or 1 , 0 deactivated , 1 activated , default 0
	askmore=0
	echo askmore=$askmore , 0 or 1 , 0 deactivated , 1 activated , default 1
	pingdns=1
	echo pingdns=$pingdns , 0 or 1 , 0 deactivated , 1 activated , default 1
	## You can change dns ping. ( 1 or 0 ). Prefer option pingdns=0 to deactivate all.
	pingdnsCloudflare=0
	echo pingdnsCloudflare=$pingdnsCloudflare , 0 or 1 , 0 deactivated , 1 activated , default 1
	pingdnsgogle=0
	echo pingdnsgogle=$pingdnsgogle , 0 or 1 , 0 deactivated , 1 activated , default 1
	pingdnsopendns=1
	echo pingdnsopendns=$pingdnsopendns , 0 or 1 , 0 deactivated , 1 activated , default 1
	htmlcreate=1
	echo htmlcreate=$htmlcreate , 0 or 1 , 0 deactivated , 1 activated , default 1
	watchdogreport=1
	echo watchdogreport=$watchdogreport , 0 or 1 , 0 deactivated , 1 activated , default 1
	minimize=0
	echo minimize=$minimize , 0 or 1 , 0 deactivated , 1 activated , default 1
	echo
	loop1=78
	loop2=0
	loop3=0
	loop4=0
	
	maxip1=255
	maxip2=255
	maxip3=255
	maxip4=255
	
	endip1=79
	endip2=0
	endip3=0
	endip4=0
	
	globalversion=2025-05-05_Monday_07:25:17
	echo
echo -------------------------========================-------------------------
echo "Color codes / Informations."
	echo
	echo  "${green}	████████████████     ALL OK / ACTIVE      ████████████████ ${reset}"
	echo   "${blue}	████████████████      INFORMATION(S)      ████████████████ ${reset}"
	echo "${yellow}	████████████████   ATTENTION / INACTIVE   ████████████████ ${reset}"
	echo    "${red}	████████████████   FATAL ERROR / OFFLINE  ████████████████ ${reset}"
	echo

echo -------------------------========================-------------------------
	echo Check installed requirements !
	echo
if command -v tnftp >/dev/null 2>&1
	then
		echo "tnftp installed continue."
		dpkg -s tnftp | grep Version
		echo "${green} ████████████████ OK ████████████████ ${reset}"
		echo
		tnftp=1
	else
		echo "You don't have ' tnftp ' installed, NO ERRORS WILL OCCUR IN THIS SOFTWARE."
		echo "Add with : sudo apt-get install tnftp"
		echo
		echo "${blue} ████████████████ Dependency information ████████████████ ${reset}"
		echo
		echo "This software is working without tnftp !"
		echo
		tnftp=0
		sleep 0.5
	fi

## -------------------------===== Separator =====-------------------------
if command -v whois >/dev/null 2>&1
	then
		echo "whois installed continue."
		dpkg -s whois | grep Version
		echo "${green} ████████████████ OK ████████████████ ${reset}"
		echo
		whois=1
	else
		echo "You don't have ' whois ' installed, NO ERRORS WILL OCCUR IN THIS SOFTWARE."
		echo "Add with : sudo apt-get install whois"
		echo
		echo "${blue} ████████████████ Dependency information ████████████████ ${reset}"
		echo
		echo "This software is working without whois !"
		echo
		whois=0
		sleep 0.5
	fi

## -------------------------===== Separator =====-------------------------
if command -v filezilla >/dev/null 2>&1
	then
		echo "filezilla installed continue."
		dpkg -s filezilla | grep Version
		echo "${green} ████████████████ OK ████████████████ ${reset}"
		filezilla=1
		echo
	else
		echo "You don't have ' filezilla ' installed."
		echo "Add with : sudo apt-get install filezilla"
		echo
		echo "${blue}████████████████ Dependency information ████████████████${reset}"
		echo
		echo "This software is working without filezilla !"
		echo
		filezilla=0
		sleep 0.5
	fi

## -------------------------===== Separator =====-------------------------
if command -v xclip >/dev/null 2>&1
	then
		echo "xclip installed continue."
		dpkg -s xclip | grep Version
		echo "${green} ████████████████ OK ████████████████ ${reset}"
		echo
		xclip=1
	else
		echo "You don't have ' xclip ' installed."
		echo "Add with : sudo apt-get install xclip"
		echo
		echo "${blue}████████████████ Dependency information ████████████████${reset}"
		echo
		echo "This software is working without xclip !"
		echo
		xclip=0
		sleep 0.5
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
		echo "${green} ████████████████ OK ████████████████ ${reset}"
		echo
		xdotool=1
	else
		echo "You don't have ' xdotool ' installed."
		echo "Add with : sudo apt-get install xdotool"
		echo
		echo "${blue}████████████████ Dependency information ████████████████${reset}"
		echo
		xdotool=0
		sleep 0.5
	fi

## -------------------------===== Separator =====-------------------------
part=$((part+1))
echo -------------------------===== Section $part =====-------------------------
echo "Functions informations. Version 1,12"
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
		echo
		echo "${green}███████████████████████ DEBUG RUNNING ███████████████████████${reset}"
		echo
		echo "Debug data : debug=$debug debugcore=$debugcoreerror=$error part=$part noquit=$noquit automatic=$automatic primeerror=$primeerror"
		echo "		random=$random random2=$random2 id=$id automatic=$automatic reseize=$reseize debugcore=$debugcore"
		echo
		reseize=0
		}

##-------------------------=========== SEPARATOR =============-------------------------

	name=ERROR
	explain="Errorlevel show error messages."
	if [ "$error" -eq "0" ]; then
		echo 	"Function ${green}█████${reset} Default deactivated $name . $explain"
	else
		echo 	"Function ${blue}█████${reset} Activated $name . $explain"
	fi
	echo

	error() {
		if [ "$?" -ge 1 ]; then
			reseize=0
			noquit=1
			automatic=0
			primeerror=$((primeerror+1))
			echo
			echo "${red}█████████████████████████████████ ERROR SECTION $part █████████████████████████████████${reset}"
			debug
			echo "!!! ERROR was detected !!!" ## Press ANY key to try to CONTINUE !!!
			echo
			printf '\033[8;45;90t'		## Will resize the window.
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
## Simple function small bar to wait 3 sec. This bar does work with debian 12 & 13. Version 1.05

	functionsmallbar() {
		speed=0.2
		if [ "$debug" -eq 0 ]; then
			echo -ne ${yellow}'	TimeToQuit |                        |    (0%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ██                    |   (10%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ████                  |   (20%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ██████                |   (30%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ████████              |   (40%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ██████████            |   (50%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ████████████          |   (60%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ██████████████        |   (70%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ████████████████      |   (80%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ██████████████████    |   (90%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ████████████████████  |  (100%)\r'${reset}
			sleep $speed
			echo -ne '\n'
		else
			echo ${yellow} ████████████████████ DEBUG BYPASS functionfastbar ████████████████████${reset}
			sleep $speed
		fi
		}

## -------------------------===== Separator =====-------------------------
## Simple function bar to TimeOut 12 sec.
	## Version 2.03
	## https://github.com/LostByteSoft
	## LostBytesSoft, lost byte softwares, because everything is ephemeral.

	functionfastbar() {
		if [ "$debug" -eq 0 ]; then
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
		else
			echo ${blue} ████████████████████ DEBUG BYPASS functionfastbar ████████████████████${reset}
			sleep 1
		fi
		}

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
	sleep=3
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

	printf '\033[8;45;90t'		# will resize the window.

	## https://github.com/LostByteSoft
	## LostBytesSoft, lost byte softwares, because everything is ephemeral.

	## 0.0.0.0–0.255.255.255 Current network.
	## 127.0.0.0 to 127.255.255.255 Used for loopback addresses to the local host.
	## Alot reserved ip addresses...
	## 255.255.255.255 Reserved for the limited broadcast destination address.

	## Read here for reserved ip https://en.wikipedia.org/wiki/Reserved_IP_addresses
	## 592 708 864 ip addresses are reserved

## Software name, what is this, version, informations.
	echo "Software name: SCANNER IP"
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

##-------------------------=========== SEPARATOR =============-------------------------

	## LOCAL VAR, debug core for debugging purposes.
	debugScannerIP=0
	version=6.02		## 2025-05-01-12-34-23
	## version=6.00		## 2025-04-26-07-30-08 ; Version 6.00 first public release.

	## VARIABLE DO NOT CHANGE THESES VALUES, MUST BE AT ZERO.
	port=0
	openport=0
	name=0
	extraportcount=0
	openextraport=0
	test10times=0
	ftpconnect=0
	weblink=0

	## VARIABLE DO NOT CHANGE THESES VALUES, MUST BE AT PRECISE NUMBER.
	active=1
	choice=5

	## VARIABLE DO NOT CHANGE THESES VALUES, MUST BE AT ZERO.
	maxlineshttp=0
	newfilehttp=0
	newfileftp=0
	newfileftpanonymous=0
	newfilehtm=0
	newftpfound=0
	newftpanonymousfound=0

	## VARIABLE DO NOT CHANGE THESES VALUES, MUST BE AT ZERO.
	locip=0.0.0.0
	extip=0.0.0.0
	gateip=0.0.0.0
	extip1=0
	gateip1=0
	locip1=0
	locip5=0
	extip5=0
	gateip5=0

	## VARIABLE DO NOT CHANGE THESES VALUES, MUST BE AT ZERO (OR TWO).
	test10times=0		## test 10 times in loop and waiting for internet/wan connexion.
	maxlooptimes=0
	watchdogerror=2
	watchdogerror100=0
	watchdogerror010=0
	watchdogerror001=0
	watchdogexe=0		## Watchdog execution numbers of times executed in loop.
	
	ipname=$loop1.$loop2.$loop3.$loop4-$endip1.$endip2.$endip3.$endip4

##-------------------------=========== SEPARATOR =============-------------------------

	if [ "$debugScannerIP" -eq "1" ]; then
		echo 	"Function ${yellow}█████${reset} ACTIVE debugScannerIP. Watch variables."
		minimize=0
	else
		echo 	"Function ${green}█████${reset} Default DEACTIVATED debugScannerIP. Watch variables."
	fi
	echo

	functiondebugScannerIP () {
		if [ "$debug" -eq "1" ]; then
			echo 	"Function ${blue}█████${reset} debugScannerIP. Wait 3 seconds. Code $codenum."
			fi
		#debug
		echo "Debug WatchDog data ip0 : extip=$extip gateip=$gateip locip=$locip"
		echo "Debug WatchDog data ip1 : extip=$extip1 gateip=$gateip1 locip=$locip1"
		echo "Debug WatchDog data ip5 : extip=$extip5 gateip=$gateip5 locip=$locip5"
		echo "Debug data WatchDog : watchdog=$watchdog watchdogreport=$watchdogreport watchdogerror=$watchdogerror watchdogexe=$watchdogexe"
		echo "Debug data WatchDog : watchdogerror100=$watchdogerror100 watchdogerror010=$watchdogerror010 watchdogerror100=$watchdogerror100"
		echo "Debug data : maxlineshttp=$maxlineshttp newfilehttp=$newfilehttp newfileftp=$newfileftp newfileftpanonymous=$newfileftpanonymous newfilehtm=$newfilehtm"
		echo "Debug opt. : scanmoreport=$scanmoreport askmore=$askmore openport=$openport htmlcreate=$htmlcreate watchdogreport=$watchdogreport"
		echo "		minimize=$minimize pingdns=$pingdns debugScannerIP=$debugScannerIP"
		echo "Debug data : extraportcount=$extraportcount test10times=$test10times maxlooptimes=$maxlooptimes"
		echo "Name of software : $me - Pid = $id"
		echo "Loop : $loop1.$loop2.$loop3.$loop4 = $endip1.$endip2.$endip3.$endip4 : ipname = $ipname"
		echo "htmext = ../ScanHTML/ScanHTML-$loop1.$loop2.htm"
		if [ "$debug" -eq "1" ]; then
			sleep 0.5
			fi
		}	## end function

	if [ "$debugScannerIP" -eq "1" ]; then
		codenum=10
		functiondebugScannerIP
		fi

##-------------------------=========== SEPARATOR =============-------------------------
## Verify folders.

## Logs are going to Documents/ScanLOGS folder. $HOME/Documents/ScanLOGS/ScanLOGS-$ipname.txt
## Errors are going to Desktop folder. ../ScanERRORS.txt
## Ftp are going to Documents/ScanFTP folder. "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
## Http are going to Documents/ScanHTTP folder. "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
## Extra are going to Documents/ScanEXTRA folder. $HOME/Documents/ScanEXTRA/ScanEXTRA-$loop1.$loop2.$loop3.$loop4.txt
## Html are going to Documents/ScanHTML folder. $HOME/Documents/ScanHTML/ScanHTML-$ipname.htm

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
	fi

##-------------------------=========== SEPARATOR =============-------------------------

	echo
	echo 	"Function ${green}█████${reset} Default ACTIVE Ping. Ping your local ip, your router and your ISP."

	functionping () {
		## WatchDog is used to verify each 255 ping if you computer, router or ISP is jammed or crashed.
		## 0 active 1 inactive
		watchdogerror=0
		watchdogerror100=0
		watchdogerror010=0
		watchdogerror001=0
		## Manual test ping : ( 0 = active , 1 = inactive)
		## ping -W 0.2 -c 1 126.1.8.22 && echo --- ANSWER --- && echo $?
		## ping -W 0.2 -c 1 192.168.0.1 && echo --- ANSWER --- && echo $?
		## ping -W 0.2 -c 1 192.168.0.70 && echo --- ANSWER --- && echo $?

##-------------------------=========== SEPARATOR =============-------------------------

	extip=$(dig @resolver4.opendns.com myip.opendns.com +short 2>/dev/null)						## Watch if your modem respond.
		if [ -z "$extip" ]; then
			extip1=0
			watchdogerror100=1
			extip5=ERROR-EXT-IP
		else
			extip5=$extip
			extip1=1
			watchdogerror100=0
		fi

	if [ "$extip1" -eq "1" ]; then
		ping -t 1 -c 1 "$extip" &> /dev/null
		active=$(echo $?)
		if [ "$active" -ge "1" ]; then
			#echo "External ip crashed : $extip"
			watchdogerror001=1
			watchdogerror=1
			echo "${red}█████████${reset} WatchDog ERROR $extip ${reset}"
		#else
			#echo "${green}█████████${reset} WatchDog Ping $extip ${reset}"
		fi
	fi

	##-------------------------=========== SEPARATOR =============-------------------------

	gateip=$(ip route | grep default | awk '{print $3}')								## Watch if your router respond.
		if [ -z "$gateip" ]; then
			gateip1=0
			watchdogerror010=1
			gateip5=ERROR-GATE-IP
		else
			gateip5=$gateip
			gateip1=1
			watchdogerror010=0
		fi

	if [ "$gateip1" -eq "1" ]; then
		ping -t 1 -c 1 "$gateip" &> /dev/null
		active=$(echo $?)
		if [ "$active" -ge "1" ]; then
			#echo "Gateway ip crashed : $gateip"
			watchdogerror010=1
			watchdogerror=1
			echo "${red}█████████${reset} WatchDog ERROR $gateip ${reset}"
		#else
			#echo "${green}█████████${reset} WatchDog Ping $gateip ${reset}"
		fi
	fi

	##-------------------------=========== SEPARATOR =============-------------------------

	locip=$(ip link show up | grep -q "state UP" && ip route get 1 | awk '{print $(NF-2);exit}' 2>/dev/null)	## Watch if your lan card respond.
		if [ -z "$locip" ]; then
			locip1=0
			watchdogerror001=1
			locip5=ERROR-LOC-IP
		else
			locip5=$locip
			locip1=1
			watchdogerror001=0
		fi

	if [ "$locip1" -eq "1" ]; then
		ping -t 1 -c 1 "$locip" &> /dev/null
		active=$(echo $?)
		if [ "$active" -ge "1" ]; then
			#echo "Local ip crashed : $locip"
			watchdogerror100=1
			watchdogerror=1
			echo "${red}█████████${reset} WatchDog ERROR $locip ${reset}"
		#else
			#echo "${green}█████████${reset} WatchDog Ping $locip ${reset}"
		fi
	fi

	##-------------------------=========== SEPARATOR =============-------------------------

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

	watchdog () {
	if [ "$watchdog" -eq "1" ]; then
			functionping
			watchdogexe=$(( $watchdogexe + 1 ))
		else
			echo "${blue}██${reset} WatchDog ; External ip DEACTIVATED , Gateway ip DEACTIVATED , Local ip DEACTIVATED ${blue}██${reset}"
			echo "${blue}████${reset} FtpFound=$newfileftp FtpFoundAnonymous=$newfileftpanonymous HtmAccess=$newfilehtm Watchdogexe=$watchdogexe ${blue}████${reset}"
			watchdogerror=2
			watchdog=0
		fi

	if [ "$watchdogerror" -eq "0" ]; then
		nowtime1=$(date +"%Y-%m-%d %H:%M:%S")
		echo "${green}██${reset} WatchDog ; External ip $extip5 , Gateway ip $gateip5 , Local ip $locip5 ${green}██${reset}"
		echo "${blue}████${reset} FtpFound=$newfileftp FtpFoundAnonymous=$newfileftpanonymous HtmAccess=$newfilehtm Watchdogexe=$watchdogexe ${blue}████${reset}"
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
	
	echo "$nowtime1 ; WatchDog External ip $extip5 Gateway ip $gateip5 Local ip $locip5 ; WatchDog executed at $loop1.$loop2.$loop3.$loop4" >> "../ScanLOGS/ScanLOGS-$ipname.txt"

	##-------------------------=========== SEPARATOR =============-------------------------
	
	if [ "$watchdogerror" -eq "1" ]; then
		maxlooptimes=10
		test10times=1
		echo
		echo "${red}███████████████ WATCHDOG ERROR at ip : $loop1.$loop2.$loop3.$loop4 ███████████████${reset}"
		echo "$nowtime1 WatchDog ERROR at ip : $loop1.$loop2.$loop3.$loop4" >> "../ScanLOGS/ScanLOGS-$ipname.txt"
		echo
		echo "${yellow}████████ WATCHDOG will try $maxlooptimes times to restart and loop test. ████████${reset}"
		echo
		echo "${green}████ If the connection comes back between these $maxlooptimes times, it will continue. ████${reset}"
		echo
		sleep=10
		functionsleepbar
		echo
		functionping
		nowtime4=$(date +"%Y-%m-%d_%H:%M:%S")
		echo "${red}██${reset} ERROR : External ip $extip5 Gateway ip $gateip5 Local ip $locip5 ${red}██${reset}"
		echo "$nowtime4 ; WatchDog ERROR External ip $extip5 Gateway ip $gateip5 Local ip $locip5 ; WatchDog executed at $loop1.$loop2.$loop3.$loop4" >> "../ScanLOGS/ScanLOGS-$ipname.txt"
		echo

		if [ "$watchdogreport" -eq "1" ]; then
			test10times=$(( $test10times - 1 ))
			echo "-------------------------=========== Error Watchdog Separator =============-------------------------" >> "../ScanERRORS.txt"
			echo "" >> "../ScanERRORS.txt"
			nowtime4=$(date +"%Y-%m-%d %H:%M:%S")
			echo "Watchdog start $nowtime4 - WatchDog error scanner ip Version $version" >> "../ScanERRORS.txt"
			echo "Name of software : $me - Pid=$id - Ip=$loop1.$loop2.$loop3.$loop4" >> "../ScanERRORS.txt"
			echo "Debug watch : watchdog=$watchdog watchdogerror=$watchdogerror test10times=$test10times watchdogexe=$watchdogexe" >> "../ScanERRORS.txt"
			echo "Debug watch : watchdogerror100=$watchdogerror100 watchdogerror010=$watchdogerror010 watchdogerror100=$watchdogerror100" >> "../ScanERRORS.txt"
			echo "Debug ip0 : extip0=$extip - gateip=$gateip - locip=$locip" >> "../ScanERRORS.txt"
			echo "Debug ip1 : extip1=$extip1 - gateip=$gateip1 - locip=$locip1" >> "../ScanERRORS.txt"
			echo "Debug ip5 : extip5=$extip5 - gateip=$gateip5 - locip=$locip5" >> "../ScanERRORS.txt"
			echo "Debug scan : $loop1.$loop2.$loop3.$loop4 - $maxip1.$maxip2.$maxip3.$maxip4 - $endip1.$endip2.$endip3.$endip4" >> "../ScanERRORS.txt"
			echo "Debug data : maxlineshttp=$maxlineshttp newfilehttp=$newfilehttp newfileftp=$newfileftp newfileftpanonymous=$newfileftpanonymous newfilehtm=$newfilehtm" >> "../ScanERRORS.txt"
			echo "Debug opt. : scanmoreport=$scanmoreport askmore=$askmore openport=$openport htmlcreate=$htmlcreate watchdogreport=$watchdogreport" >> "../ScanERRORS.txt"
			echo "		minimize=$minimize pingdns=$pingdns debugScannerIP=$debugScannerIP" >> "../ScanERRORS.txt"
			fi
			
		while [ "$test10times" -le "$maxlooptimes" ]
			do
			if [ "$watchdogerror" -eq "1" ]; then
				echo "${yellow}███${reset} AUTO-RESCAN : External ip $extip5 Gateway ip $gateip5 Local ip $locip5 ${yellow}███${reset}"
				echo "${yellow}███${reset} test10times=$test10times watchdog=$watchdog watchdogerror=$watchdogerror ${yellow}███${reset}"
				echo
				sleep=10
				functionsleepbar
				echo
				functionping
				fi
			test10times=$(( $test10times + 1 ))
			if [ "$watchdogerror" -eq "0" ]; then
				if [ "$watchdogreport" -eq "1" ]; then
					echo "Debug : watchdog=$watchdog watchdogerror=$watchdogerror test10times=$test10times" >> "../ScanERRORS.txt"
					if [ "$test10times" -le "5" ]; then
						echo "███ test10times=$test10times LOW error ███" >> "../ScanERRORS.txt"
					else
						echo "██████ test10times=$test10times MEDIUM error ██████" >> "../ScanERRORS.txt"
						fi
					if [ "$test10times" -ge "6" ]; then
						echo "█████████ test10times=$test10times BIG error █████████" >> "../ScanERRORS.txt"
						fi
						nowtime5=$(date +"%Y-%m-%d %H:%M:%S")
						#echo "Watchdog end $nowtime5 - Watchdogreport has looped $test10times times at ip $loop1.$loop2.$loop3.$loop4.">> "../ScanERRORS.txt"
						#echo "" >> "../ScanERRORS.txt"
					fi
					echo "Watchdog end $nowtime5 - Watchdogreport has looped $test10times times at ip $loop1.$loop2.$loop3.$loop4.">> "../ScanERRORS.txt"
					echo "" >> "../ScanERRORS.txt"
					break
				fi
			done
		fi		## needed
		
		if [ "$watchdogerror" -eq "1" ]; then
			echo "${blue}█████████${reset} Test your connections, trying to continue ! ${blue}█████████${reset}"
			echo
			zenity --question --text="WatchDog is in error keep trying or deactivate WatchDog ? (Timeout 30 sec.)\
			\n\n Yes = Keep WatchDog , No = Deactivate WatchDog\n\nWait 30 seconds timeout (Time out = keep)." --timeout=30
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
		echo 	"Function ${yellow}█████${reset} DEACTIVATED scanmoreport. Multiples port scan."
	fi

	if [ "$debugScannerIP" -eq "1" ]; then
		codenum=20
		functiondebugScannerIP
		fi

	functionscanports() {
	
		## https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers
		## https://www.geeksforgeeks.org/50-common-ports-you-should-know/
		openport=0

		##-------------------------=========== SEPARATOR =============-------------------------

		ftpscanports() {
		timeout 0.3 bash -c "</dev/tcp/$loop1.$loop2.$loop3.$loop4/$port" 2> /dev/null
		active=$(echo $?)
		#echo $active
		if [ "$active" -eq "0" ]; then
			echo "${green}█████████ $loop1.$loop2.$loop3.$loop4:$port : OPEN $name Port $port ${reset}"
			openport=1
			## Test anonymous connect and quit.
			#if echo -e "user anonymous\nbye" | ftp -n $loop1.$loop2.$loop3.$loop4:$port 2>/dev/null; then				## no timeout but working
			if timeout 3s bash -c 'echo -e "user anonymous\nbye" | ftp -n $loop1.$loop2.$loop3.$loop4:$port' 2>/dev/null; then	## with
					if test -f "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"; then
						newfileftpanonymous=$(( $newfileftpanonymous + 1 ))
						fi
					if [ "$newfileftpanonymous" -eq "0" ]; then
						echo '#!/bin/bash' >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
						echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
						fi
					echo "${green}█████████ $name Connected successfully with port $port. Writed in ScanFTP-ANONYMOUS-$loop1.$loop2.sh ${reset}"
					ftpconnect=1
					echo "$loop1.$loop2.$loop3.$loop4:$port OPEN : anonymous $name" >> "../ScanLOGS/ScanLOGS-$ipname.txt"
					echo "echo" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
					echo "echo Anonymous login. Find on : $nowtime2" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
					echo "echo Testing ftp site : $loop1.$loop2.$loop3.$loop4 with port $port" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
					echo "echo filezilla $loop1.$loop2.$loop3.$loop4:$port | xclip -selection clipboard" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
					echo "echo filezilla $loop1.$loop2.$loop3.$loop4:$port is in clipboard if you have xclip installed." >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
					echo "ftp ftp://anonymous:anonymous@$loop1.$loop2.$loop3.$loop4:$port" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
					echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
					newftpanonymousfound=$(( $newftpanonymousfound + 1 ))
				else
					echo "${yellow}█████████ Failed to connect $name port $port as anonymous. Writed in ScanFTP-$loop1.$loop2.sh ${reset}"
					ftpconnect=0
					echo "$loop1.$loop2.$loop3.$loop4:$port OPEN : closed $name" >> "../ScanLOGS/ScanLOGS-$ipname.txt"
					if test -f "../ScanFTP/ScanFTP-$loop1.$loop2.sh"; then
						newfileftp=$(( $newfileftp + 1 ))
						fi
					if [ "$newfileftp" -eq "0" ]; then
						echo '#!/bin/bash' >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
						echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
						fi
					echo "echo" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
					echo "echo Automatic anonymous failed, trying manual $name anonymous on port $port Find on : $nowtime2" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
					echo "echo Testing ftp site : $loop1.$loop2.$loop3.$loop4 with port $port" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
					echo "echo filezilla $loop1.$loop2.$loop3.$loop4:$port | xclip -selection clipboard" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
					echo "echo filezilla $loop1.$loop2.$loop3.$loop4:$port is in clipboard if you have xclip installed." >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
					echo "ftp ftp://anonymous:anonymous@$loop1.$loop2.$loop3.$loop4:$port" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
					echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
					newftpfound=$(( $newftpfound + 1 ))
				fi
				if [ "$htmlcreate" -eq "1" ]; then
					if test -f "../ScanHTML/ScanHTML-$loop1.$loop2.htm"; then
						newfilehtm=$(( $newfilehtm + 1 ))
						fi
				if [ "$newfilehtm" -eq "0" ]; then
					echo '<!DOCTYPE html><html><head>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
					echo '<link rel="icon" type="image/x-icon" href="../lbslogo.ico">' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
					echo '</head><body style="background-color:gray">' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
					echo "<h1 style="font-size:2vw">LostByteSoft ScannerIP. This file must be in root of /ScanHTML/</h1>" >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
					echo '<!-- ########################################################### --><left>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
echo '<p>LostByteSoft ScannerIP Menu : <a href='https://github.com/LostByteSoft'>LostByteSoft</a> <a href='../index.html'>Index</a> <a href='../ScannerLOGS.htm'>ScannerLOGS</a> <a href='S../cannerHTML.htm'>ScannerHTML</a> <a href='../ScanERRORS.txt' target=_blank>ScanERRORS</a> <a href='../readME.md' target=_blank>readME.md</a></p>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
					newfilehtm=$(( $newfilehtm + 1 ))
					fi
				if [ "$ftpconnect" -eq "0" ]; then
						echo "<li><a href='ftp ftp://anonymous:anonymous@$loop1.$loop2.$loop3.$loop4:$port' \
						target=_blank>ftp ftp://anonymous:anonymous@$loop1.$loop2.$loop3.$loop4:$port</a> OPEN $name Without anonymous accces. \
						(Copy link and paste in terminal.) ftp ftp://anonymous:anonymous@$loop1.$loop2.$loop3.$loop4:$port Scanned on time $nowtime2</li>" \
						>> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
					else
						echo "<li><a href='ftp ftp://anonymous:anonymous@$loop1.$loop2.$loop3.$loop4:$port' \
						target=_blank>ftp ftp://anonymous:anonymous@$loop1.$loop2.$loop3.$loop4:$port</a> OPEN $name With anonymous accces ACTIVATED. \
						(Copy link and paste in terminal.) ftp ftp://anonymous:anonymous@$loop1.$loop2.$loop3.$loop4:$port Scanned on time $nowtime2</li>" \
						>> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
					fi
				fi
			if [ -f "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh" ]; then
				chmod 777 "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
				fi
			if [ -f "../ScanFTP/ScanFTP-$loop1.$loop2.sh" ]; then
				chmod 777 "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
				fi
			extraportcount=$(( $extraportcount + 1 ))
			fi
			}	## end function

		##-------------------------=========== SEPARATOR =============-------------------------

		httpscanports() {
		timeout 0.3 bash -c "</dev/tcp/$loop1.$loop2.$loop3.$loop4/$port" 2> /dev/null
		active=$(echo $?)
		#echo $active
		if [ "$active" -eq "0" ]; then
			weblink=$(echo -e "\e]8;;http://$loop1.$loop2.$loop3.$loop4\ahttp://$loop1.$loop2.$loop3.$loop4\e]8;;\a")
			echo "${green}█████████ $loop1.$loop2.$loop3.$loop4:$port : OPEN $name Port $port : $weblink ${reset}"
			echo "$loop1.$loop2.$loop3.$loop4:$port OPEN $name" >> "../ScanLOGS/ScanLOGS-$ipname.txt"
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
			echo "echo $loop1.$loop2.$loop3.$loop4/zm" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			echo "firefox $loop1.$loop2.$loop3.$loop4/zm" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			if [ "$htmlcreate" -eq "1" ]; then
				if test -f "../ScanHTML/ScanHTTP-$loop1.$loop2.htm"; then
					newfilehtm=$(( $newfilehtm + 1 ))
					fi
				if [ "$newfilehtm" -eq "0" ]; then
					echo '<!DOCTYPE html><html><head>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
					echo '<link rel="icon" type="image/x-icon" href="../lbslogo.ico">' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
					echo '</head><body style="background-color:gray">' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
					echo "<h1 style="font-size:2vw">LostByteSoft ScannerIP. This file must be in root of /ScanHTML/</h1>" >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
					echo '<!-- ########################################################### --><left>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
echo '<p>LostByteSoft ScannerIP Menu : <a href='https://github.com/LostByteSoft'>LostByteSoft</a> <a href='../index.html'>Index</a> <a href='../ScannerLOGS.htm'>ScannerLOGS</a> <a href='S../cannerHTML.htm'>ScannerHTML</a> <a href='../ScanERRORS.txt' target=_blank>ScanERRORS</a> <a href='../readME.md' target=_blank>readME.md</a></p>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
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
					echo "${blue}█████████ Website found on port $port : $website. ${reset}"
					echo "<li><a href='http://$loop1.$loop2.$loop3.$loop4:$port' target=_blank>http://$loop1.$loop2.$loop3.$loop4:$port</a> \
					OPEN $name Port $port ; Scanned on time $nowtime2 ; Associated website found : <a href='$website' target=_blank>$website</a></li>" \
					>> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"	 
					fi
				fi
			if [ -f "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh" ]; then
				chmod 777 "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
				fi
			maxlineshttp=$(( $maxlineshttp + 2 ))
			extraportcount=$(( $extraportcount + 1 ))
			fi
			}	## end function

		##-------------------------=========== SEPARATOR =============-------------------------

		port=20
		name='ftp'
		ftpscanports
		
		port=21
		name='ftp'
		ftpscanports

		port=80
		name='http'
		httpscanports

		port=443
		name='https'
		httpscanports

		port=8008
		name='http'
		httpscanports
		
		port=8080
		name='http'
		httpscanports

		## You can add port and name here, change port number and change name.
		## You can change option scanmoreports=1
		#port=8081
		#name='http'
		#httpscanports

		##-------------------------=========== SEPARATOR =============-------------------------

		if [ "$newfileftpanonymous" -ge "10" ]; then
			echo "read -n 1 -s -r -p 'Press key to continue trying ftp address.'" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
			echo "echo" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
			echo "sleep 0.25" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
			echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanFTP/ScanFTP-ANONYMOUS-$loop1.$loop2.sh"
			newfileftpanonymous=0
			fi

		if [ "$newfileftp" -ge "10" ]; then
			echo "read -n 1 -s -r -p 'Press key to continue trying ftp address.'" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
			echo "echo" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
			echo "sleep 0.25" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
			echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanFTP/ScanFTP-$loop1.$loop2.sh"
			newfileftp=0
			fi

		if [ "$maxlineshttp" -ge "15" ]; then
			echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			echo "sleep 10 ## Time sleep to let page load." >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			echo "read -n 1 -s -r -p 'Press key to continue loading web pages.'" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			echo "echo" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			echo "echo --------------------====== SEPARATOR ========--------------------" >> "../ScanHTTP/ScanHTTP-$loop1.$loop2.sh"
			maxlineshttp=0
			fi

		#echo openport $openport
		if [ "$openport" -eq "0" ]; then
				echo "${yellow}█████████ $loop1.$loop2.$loop3.$loop4 : NO active open port found ${reset}"
			else
				echo "${green}█████████ $loop1.$loop2.$loop3.$loop4 : Active open port found ${reset}"
			fi

	##-------------------------=========== SEPARATOR =============-------------------------
	## Full scan port mode.

		if [ "$scanmoreport" -eq "1" ]; then
			#if [ "$openport" -eq "1" ]; then
				echo "${blue}█████████ Active : Multiples port scan. Sweeps the most common. ${reset}"
				## 22 23 69 443 981 989 1194 1337 5001 6969 8887 8888 31337
				#fi

			functionscanmoreports() {
				timeout 0.3 bash -c "</dev/tcp/$loop1.$loop2.$loop3.$loop4/$port" 2> /dev/null
				active=$(echo $?)
				#echo $active
				if [ "$active" -eq "0" ]; then
					echo "${green}█████████ $loop1.$loop2.$loop3.$loop4:$port : OPEN $name Port $port : ACTIVE ${reset}"
					echo "$loop1.$loop2.$loop3.$loop4:$port OPEN $name" >> "../ScanLOGS/ScanLOGS-$ipname.txt"
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
							echo "<h1 style="font-size:2vw">LostByteSoft ScannerIP. This file must be in root of /ScanHTML/</h1>" >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
							echo '<!-- ########################################################### --><left>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
echo '<p>LostByteSoft ScannerIP Menu : <a href='https://github.com/LostByteSoft'>LostByteSoft</a> <a href='../index.html'>Index</a> <a href='../ScannerLOGS.htm'>ScannerLOGS</a> <a href='S../cannerHTML.htm'>ScannerHTML</a> <a href='../ScanERRORS.txt' target=_blank>ScanERRORS</a> <a href='../readME.md' target=_blank>readME.md</a></p>' >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
							newfilehtm=$(( $newfilehtm + 1 ))
							fi
						echo "<li><a href='$loop1.$loop2.$loop3.$loop4:$port' target=_blank>$loop1.$loop2.$loop3.$loop4:$port</a> OPEN $name ; Scanned on time $nowtime2</li>"\
						 >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
						fi
				fi
				}	## end function

		##-------------------------=========== SEPARATOR =============-------------------------

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

			#port=443
			#name='https'
			#functionscanmoreports

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

			port=5001
			name='https 3CX Phone'
			functionscanmoreports

			port=6969
			name='Torrents 6969'
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
				echo "${yellow}█████████ $loop1.$loop2.$loop3.$loop4 : ScanMorePorts NO active open extra port found ${reset}"
			else
				echo "${green}█████████ $loop1.$loop2.$loop3.$loop4 : ScanMorePorts Active open extra port found OPEN ${reset}"
			fi
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

	askmore() {
	if [ "$askmore" -eq "1" ]; then
		if [ "$extraportcount" -ge "6" ]; then	## only for interesting ip.
			## Working examples
			## nslookup 8.8.8.8
			## host 8.8.8.8
			## dig -x 8.8.8.8
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
	}	## end function

##-------------------------=========== SEPARATOR =============-------------------------

	if [ "$htmlcreate" -eq "1" ]; then
			echo 	"Function ${green}█████${reset} ACTIVE HtmlCreate. Do a web pages of responding ip."
		else
			echo 	"Function ${blue}█████${reset} DEACTIVATED HtmlCreate. Do a web pages of responding ip."
		fi
	echo

	if [ "$minimize" -eq "1" ]; then
			echo 	"Function ${green}█████${reset} ACTIVE Minimize. Minimize the process after start."
		else
			echo 	"Function ${blue}█████${reset} DEACTIVATED Minimize. Minimize the process after start."
		fi
	echo

##-------------------------=========== SEPARATOR =============-------------------------

	if [ "$pingdns" -eq "1" ]; then
		echo 	"Function ${green}█████${reset} Default ACTIVE PingDns. Test if internet respond."
	else
		echo 	"Function ${yellow}█████${reset} DEACTIVATED PingDns. You should not deactivate this."
	fi
	echo

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
			echo ERROR.... check your internet.
			echo
			sleep=10
			functionsleepbar
			fi
		}	## end function

	if [ "$debugScannerIP" -eq "1" ]; then
		codenum=30
		functiondebugScannerIP
		fi

##-------------------------=========== SEPARATOR =============-------------------------
## Running checker. Only one instance is allowed.

	## Local var
	choice=5

function_zenitywait () {
	zenity --question --width 400 --height 150 --title="ScanIP checker, Locked-up." \
	--text="ScanIP_WAN_V_$ipname.sh is already running.\n\nOnly one instance is allowed. (Remove if program/pc has crashed.)\n\nPress NO to QUIT or press YES to remove lock-up and continue."

	choice=$?
	#echo "choice : $choice"
	
	if [ $choice -eq 0 ] ; then
		rm "/dev/shm/$ipname.lock" 2> /dev/null
		sleep 0.5	## watch too fast for the file, need time to erase
		echo
	else
		echo
		echo "Finished. Version $version. Exiting..."
		echo
		sleep=2
		functionsleepbar
		exit 0
	fi
	}	## End function function_zenitywait

	while [ -f "/dev/shm/$ipname.lock" ]	## Watch if file exist
		do
		part=$((part+1))
		echo "-------------------------===== Section $part =====-------------------------"
		echo
		echo "${red}██ ScanIP_WAN_V_$ipname.sh is already running. ██${reset}"
		echo "${red}██████ Only one instance is allowed. (Remove if program/pc has crashed.) ██████${reset}"
		#echo "Debug : If file exist goto loop checker !"
		function_zenitywait
		done

	## create a lock
	touch "/dev/shm/$ipname.lock"

##-------------------------=========== SEPARATOR =============-------------------------

if [ "$pingdns" -eq "1" ]; then
	part=$((part+1))
	echo "-------------------------===== Section $part =====-------------------------"
	echo "DNS servers. They are extremely reliable, if it doesn't work the problem"
	echo "is your connection."
	echo

	if [ "$pingdnsCloudflare" -eq "1" ]; then
	namepc="Cloudflare Dns 1"
		ipselect=1.1.1.1
		functionpingknown

	namepc="Cloudflare Dns 2"
		ipselect=1.0.0.1
		functionpingknown
	fi
	if [ "$pingdnsgogle" -eq "1" ]; then
	namepc="Google Dns 1"
		ipselect=8.8.8.8
		functionpingknown

	namepc="Google Dns 2"
		ipselect=8.8.4.4
		functionpingknown
	fi
	if [ "$pingdnsopendns" -eq "1" ]; then
	namepc="Open Dns 1"
		ipselect=208.67.222.222
		functionpingknown

	namepc="Open Dns 2"
		ipselect=208.67.220.220
		functionpingknown
	fi
fi

	if [ "$debugScannerIP" -eq "1" ]; then
		codenum=40
		functiondebugScannerIP
		fi

##-------------------------=========== SEPARATOR =============-------------------------

function handle_interrupt {
echo "Software lead out. Version 5.12"
	if [ "$reseize" -eq "1" ]; then
		printf '\033[8;25;100t'		## Will resize the window.
		fi
	echo
	echo "Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random"
	echo "		random2=$random2 automatic=$automatic primeerror=$primeerror id=$id reseize=$reseize"
	echo
	echo -------------------------===== End of Bash ======-------------------------
	echo
	echo "Finish... with numbers of actions : $part"
	echo "This script take $(( SECONDS - start )) seconds to complete."
	date=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
	echo "Time needed: $date"
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	echo
	echo " " >>/dev/shm/logs.txt
	echo "$now (Time now)" >>/dev/shm/logs.txt
	echo "	Time needed : $date" >>/dev/shm/logs.txt
	echo "	Name of software : $me" >>/dev/shm/logs.txt
	echo "	Debug data : debug=$debug debugcore=$debugcore error=$error part=$part noquit=$noquit random=$random random2=$random2 automatic=$automatic primeerror=$primeerror id=$id reseize=$reseize" >>/dev/shm/logs.txt
	echo "	File (If any used) : $file" >>/dev/shm/logs.txt
	echo " " >>/dev/shm/logs.txt
	echo "--------------------====== SEPARATOR ========--------------------" >>/dev/shm/logs.txt

## -------------------------===== Separator =====-------------------------
## Exit, wait or auto-quit.

	if [ "$primeerror" -eq "1" ]; then
		if [ "$reseize" -eq "0" ]; then
			printf '\033[8;30;91t'		## Will resize the window.
			fi
		echo
		echo "	${red}████████████████████████████████████████████${reset}"
		echo "	${red}██                                        ██${reset}"
		echo "	${red}██     Unknown entry event... ERROR(S)    ██${reset}"
		echo "	${red}██                                        ██${reset}"
		echo "	${red}████████████████████████████████████████████${reset}"
		echo
		echo "Numbers of error(s) : $primeerror"
		echo
		echo "Terminated : $me"
		echo
		#debug
		sleep=5
		functionsleepbar
		noquit=1
	else
		if [ "$reseize" -eq "0" ]; then
			printf '\033[8;19;91t'		## Will resize the window.
			fi
		echo
		echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "${green}██         NO errors detected.        ██${reset}	${blue}██       Time needed : $date       ██${reset}"
		echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo
		echo "Terminated : $me"
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

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"

	echo "The code program. Scanner ISP. Global version $globalversion"
	echo
	echo "Scanner version $version . WatchDog are used for watching if something break."
	echo
	echo "Start scan ip: $loop1.$loop2.$loop3.$loop4 Maximum scan ip: $endip1.$endip2.$endip3.$endip4"
	echo
	echo "You can close this windows and restart it later to continue. (Do not erase the log file)."
	echo
	echo "${blue}█████ Press "atl gr + c" to quit. Can restart at last good scanning if crashed. █████${reset}"
	echo

	lastscan=0
	fileexist=0

	if test -f "../ScanLOGS/ScanLOGS-$ipname.txt"; then
		lastscan=$( tail -1 "../ScanLOGS/ScanLOGS-$ipname.txt" | head -1 )
		fileexist=1
		echo
		fi

	if [ "$debug" -eq "1" ]; then
		echo ipname = $ipname
		echo lastscan = $lastscan
		echo ip_address = $ip_address
		echo "../ScanLOGS/ScanLOGS-$ipname.txt"
		sleep 1
		fi

	#watchdog	## errors
	#echo
	sleep=3
	functionsleepbar
	echo

	if [ "$fileexist" -eq "1" ]; then

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
			if [ "$debug" -eq "1" ]; then
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
				echo ip_address = $ip_address
				fi
			fi

		if [[ "$lastscan" == *WatchDog* ]]; then
			#echo "██ WatchDog External ip 135.23.0.160 Gateway ip 192.168.0.1 Local ip $loop1.$loop2.$loop3.$loop4 ██ WatchDog executed at 252.9.237.0" | grep -oP 'executed at \K[\d\.]+'
			lastscan=$(echo "$lastscan" | grep -oP 'executed at \K[\d\.]+')
			IFS='.'
			read -r loop10 loop20 loop30 loop40 <<< "$lastscan"
			if [ "$debug" -eq "1" ]; then
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
				echo ip_address = $ip_address
				fi
			fi

		if zenity --question --text="ScannerIP. Log file found.\n\nNO restart new scan at : $loop1.$loop2.$loop3.$loop4\n\nYES continue with ip : $loop10.$loop20.$loop30.$loop40" --width=400
			then
				loop1=$loop10
				loop2=$loop20
				loop3=$loop30
				loop4=$loop40
				echo "Will start scanning at : $loop1.$loop2.$loop3.$loop4. Continue in the same log file."
				echo
			else
				echo "Restart to default ip : $loop1.$loop2.$loop3.$loop4. Continue in the same log file."
				echo
			fi
	fi

if [ "$debug" -eq "0" ]; then
	sleep2=0.15			## Minimum ?
	printf '\033[8;40;90t'		## will resize the window.
	sleep "$sleep2"
	printf '\033[8;36;90t'		## will resize the window.
	sleep "$sleep2"
	printf '\033[8;32;90t'		## will resize the window.
	sleep "$sleep2"
	printf '\033[8;28;90t'		## will resize the window.
	sleep "$sleep2"
	printf '\033[8;24;90t'		## will resize the window.
	sleep "$sleep2"
	printf '\033[8;20;90t'		## will resize the window.
	sleep "$sleep2"
	printf '\033[8;16;90t'		## will resize the window.
	sleep "$sleep2"
	printf '\033[8;12;90t'		## will resize the window.
	sleep "$sleep2"
	printf '\033[8;8;90t'		## will resize the window.
	sleep "$sleep2"
	fi

if [ "$minimize" -eq "1" ]; then
	pid=$(echo $PPID)
	if [ "$xdotool" -eq "1" ]; then
			echo "${blue}██████ Minimize activated. ${yellow}pid = $pid${reset} ${blue}██████${reset}"
			echo
			sleep 0.2
			#echo pid = $pid
			window_id=$(xdotool search --pid $pid | tail -1)
			sleep 0.2
			#echo $window_id
			xdotool windowminimize "$window_id"
			sleep 0.2
		else
			echo "${yellow}██████ pid = $pid${reset} ${yellow}██████${reset}"
		fi
	fi

	if [ "$debugScannerIP" -eq "1" ]; then
		codenum=50
		functiondebugScannerIP
		fi

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"

	echo
	echo "${blue}█████████ Start scanning IP... ${reset}"
	sleep 1

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
						nowtime2=$(date +"%Y-%m-%d - %H:%M:%S")
						nowtime3=$(date +"%H:%M")
						#weblink=$(echo -e "\e]8;;http://$loop1.$loop2.$loop3.$loop4\ahttp://$loop1.$loop2.$loop3.$loop4\e]8;;\a")
						#echo "ScanISP ; Scan now $loop1.$loop2.$loop3.$loop4 ; $weblink ; Max scan ip $endip1.$endip2.$endip3.$endip4 ; $nowtime2"
		echo "ScannerIP ; ScanNow $loop1.$loop2.$loop3.$loop4 ; Max scan ip $endip1.$endip2.$endip3.$endip4 ; T=$nowtime3 ; F=$newftpfound FA=$newftpanonymousfound H=$newfilehtm WD=$watchdogexe"
						#echo Debug active 1 = $active
						ping -W 0.2 -c 1 "$loop1.$loop2.$loop3.$loop4" &> /dev/null
						active=$(echo $?)
						if [ "$active" -eq "0" ]; then
							echo "${blue}█████████ $loop1.$loop2.$loop3.$loop4 : RESPONDING IP : TEST PORT ${reset}"
							functionscanports
							#echo openport $openport
							#if [ "$openport" -eq "0" ]; then
								## If you want all ip answered written in the ScanLOGS.
								#echo "$loop1.$loop2.$loop3.$loop4 Ip responded no open port." >> "../ScanLOGS/ScanLOGS-$ipname.txt"
								#if [ "$htmlcreate" -eq "1" ]; then	## If you want all ip answered written in the HTML.
								#	echo "<li>$loop1.$loop2.$loop3.$loop4 The IP address has answered but no open port.</li>"\
								#	 >> "../ScanHTML/ScanHTML-$loop1.$loop2.htm"
								#	fi
								#fi
							fi
						#echo Debug active 2 = $active
						if [ "$active" -eq "2" ]; then	## watchdog detector. Not in loop.
							#echo WatchDogDeactivated
							watchdog
							fi
						#echo Debug active 3 = $active
						## Loop 4 4e octet
						if [ "$debugScannerIP" -eq "1" ]; then
							functiondebugScannerIP					
							fi
						if [ "$askmore" -eq "1" ]; then	##Before loop4 + 1
							askmore
							fi
						loop4=$(( $loop4 + 1 ))
						##"Running WatchDog loop 4. At each 1 ip tested do a WatchDog. Do only one watch, best at loop 3"
						#watchdog
						extraportcount=0
						done
	
					##-------------------------=========== SEPARATOR =============-------------------------

					if [ "$loop1.$loop2.$loop3.$loop4" = "$endip1.$endip2.$endip3.$endip4" ]; then
							break
						else
							loop4=0
						fi
					loop3=$(( $loop3 + 1 ))
					## Loop 3 3e octet
					##"Running WatchDog loop 3. At each 256 ip tested do a WatchDog. Do only one watch, best at loop 3"
					watchdog
					done
			
				##-------------------------=========== SEPARATOR =============-------------------------

				if [ "$loop1.$loop2.$loop3.$loop4" = "$endip1.$endip2.$endip3.$endip4" ]; then
						break
					else
						loop3=0
					fi
				loop2=$(( $loop2 + 1 ))
				newfileftp=0
				newfileftpanonymous=0
				echo "${green}█████████${reset} Reset ftp data : newfileftp=$newfileftp newfileftpanonymous=$newfileftpanonymous"
				## Loop2 2e octet
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
			##"Running WatchDog loop 1. At each 1 6777 216 ip tested do a WatchDog. Do only one watch, best at loop 3"
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
	codenum=exit
	functiondebugScannerIP
	echo
	watchdog	## Needed to write the good ip in file ScanLOGS.
	echo
	echo "You have reached the end of the countdown. Last scan ip: $loop1.$loop2.$loop3.$loop4"
	echo
	echo "Finished. Version $version. Writing data at $loop1.$loop2.$loop3.$loop4 & exiting..."
	echo
	rm "/dev/shm/$ipname.lock" 2> /dev/null
	echo

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Software lead out. Version 5.13"
	if [ "$reseize" -eq "1" ]; then
		printf '\033[8;25;100t'		## Will resize the window.
		fi
	echo
	echo "Debug data : debug=$debug error=$error part=$part noquit=$noquit automatic=$automatic primeerror=$primeerror"
	echo "		random=$random random2=$random2 id=$id automatic=$automatic reseize=$reseize"
	echo
	echo -------------------------===== End of Bash ======-------------------------
	echo
	echo "Finish... with numbers of actions : $part"
	echo "This script take $(( SECONDS - start )) seconds to complete."
	date=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
	echo "Time needed: $date"
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	echo
	echo " " >>/dev/shm/logs.txt
	echo "$now (Time now)" >>/dev/shm/logs.txt
	echo "	Time needed : $date" >>/dev/shm/logs.txt
	echo "	Name of software : $me" >>/dev/shm/logs.txt
	echo "	Debug data : debug=$debug error=$error part=$part noquit=$noquit automatic=$automatic primeerror=$primeerror random=$random random2=$random2 id=$id automatic=$automatic reseize=$reseize debugcore=$debugcore" >>/dev/shm/logs.txt
	echo "	File (If any used) : $file" >>/dev/shm/logs.txt
	echo " " >>/dev/shm/logs.txt
	echo "--------------------====== SEPARATOR ========--------------------" >>/dev/shm/logs.txt

## -------------------------===== Separator =====-------------------------
## Exit, wait or auto-quit.

	if [ "$primeerror" -ge "1" ]; then
		if [ "$reseize" -eq "0" ]; then
			printf '\033[8;30;91t'		## Will resize the window.
			fi
		echo "	${red}████████████████████████████████████████████${reset}"
		echo "	${red}██                                        ██${reset}"
		echo "	${red}██     Unknown entry event... ERROR(S)    ██${reset}"
		echo "	${red}██                                        ██${reset}"
		echo "	${red}████████████████████████████████████████████${reset}"
		echo
		echo "Numbers of error(s) : $primeerror"
		echo
		echo "Terminated : $me"
		echo
		#debug
		sleep=3
		functionsleepbar
		noquit=1
	else
		if [ "$reseize" -eq "0" ]; then
			printf '\033[8;19;91t'		## Will resize the window.
			fi
		echo
		echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "${green}██         NO errors detected.        ██${reset}	${blue}██       Time needed : $date       ██${reset}"
		echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo
		echo "Terminated : $me"
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

## -------------------------===== Start of eula =====-------------------------

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

## -------------------------===== End of file =====-------------------------
