#!/bin/bash -e
#MrGhostOfficial[NetHunter]
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
#Mystylecustommodifiedcolorcode*
#Normal below are the colors
white='\033[1;37m'
red='\033[1;31m'
yellow='\033[1;33m'
green='\033[1;32m'
purple='\033[1;35m'
black='\033[1;30m'
blue='\033[1;34m'
cyan='\033[1;36m'
finished='\e[0m'
#Lite below are the colors
whitelite='\033[0;37m'
redlite='\033[0;31m'
yellowlite='\033[0;33m'
greenlite='\033[0;32m'
purplelite='\033[0;35m'
blacklite='\033[0;30m'
bluelite='\033[0;34m'
cyanlite='\033[0;36m'
#To mix below are the colors
bluemix='\033[1;34;47m'
purplemix='\033[1;35;47m'
greenmix='\033[1;32;41m'
whitemix='\033[1;37;41m'
#×××××××××××××××××××××××××××××××××××:
function checkinternet(){
clear
toilet -f smmono9 "Need-Internet" | lolcat
echo -e "${red} [${yellow}¥${red}] ${white}First Disconnect Any Connected VPN${finished}\n"
sleep 3
echo -e "${red} [${yellow}✔️${red}] ${blue}Checking your Internet Connection${redlite}...${finished}"
sleep 2
echo -e ""
ping -c 1 google.com > /dev/null 2>&1
if [[ "$?" != 0 ]]
 then
    echo -e "${yellow} [${red}-${yellow}] ${green}Internet: ${red}FAILED${finished}\n"
    sleep 2
    echo -e "${yellow} ${white}[${cyan}+${white}] ${cyanlite}This Script Need ${greenlite}Active ${cyanlite}Internet Connection${finished}"
    sleep 2
    echo -e ""
    echo -e "${redlite}               ${greenlite}Not-Connected ${redlite}Exit${finished}\n"
    sleep 2
    exit
  else
    echo -e "${red} [${green}√${red}] ${yellow}Internet:${green} CONNECTED\n${finished}"
    sleep 2
    echo -e "${yellow} ${white}[${green}+${white}] ${cyan}Please wait redirecting${redlite}...${finished}"
    sleep 5
  fi
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
spinner () {
#!/bin/bash
local pid=$!
local delay=0.25
local spinner=( '█■■■■' '■█■■■' '■■█■■' '■■■█■' '■■■■█' )

while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do

for i in "${spinner[@]}"
do
	tput civis
	echo -ne "${bluelite}\r[${yellowlite}❢${bluelite}]${greenmix}Downloading${redlite}..${greenlite}Please wait${redlite}.......${yellowlite}[${greenlite}$i${yellowlite}]${finished}   ";
	sleep $delay
	printf "\b\b\b\b\b\b\b\b";
done
done
printf "   \b\b\b\b\b"
tput cnorm
printf "${greenlite} ${redlite}[${greenlite}Done!${redlite}]${finished}";
echo "";
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
spinner2(){
#!/bin/bash
sleep 20 & PID=$! #simulate a long process
echo -e "IT MAY TAKE SOME TIME, BE PATIENT${redlite}...${finished}"
printf "${redlite}["
# While process is running...
while kill -0 $PID 2> /dev/null; do 
    printf  "${greenlite}▓"
    sleep 1
done
printf "${redlite}] ${white}done${redlite}!${finished}"
echo ''
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function main_menu(){
echo -e "${finished}"
clear;reset
echo -e """${red}░░╚══╗░╔═╔════╝                     ${whitelite}░░╚══╗░╔═╔════╝${finished}
${red}╚═╦═╗╠═╩═╩╗╔═╦═╗ ${greenlite}╦┌┐┌┌─┐┌┬┐┌─┐┬  ┬  ${finished}${whitelite}╚═╦═╗╠═╩═╩╗╔═╦═╗${finished}
${red}░░║▒╠╣▒▒▒▒╠╣▒║▒║ ${greenlite}║│││└─┐ │ ├─┤│  │  ${finished}${whitelite}░░║▒╠╣▒▒▒▒╠╣▒║▒║${finished}
${red}╔═╩═╝╠═╦═╦╝╚═╩═╝ ${greenlite}╩┘└┘└─┘ ┴ ┴ ┴┴─┘┴─┘${finished}${whitelite}╔═╩═╝╠═╦═╦╝╚═╩═╝${finished}
${red}░░╔══╝░╚═╚════╗                     ${whitelite}░░╔══╝░╚═╚════╗${finished}"""
echo -e "${black} —————————————————— ${red}[${green}INFORMATION${red}] ${black}———————————————————>
${red} [${green}✓${red}] ${white}Creator ${red}: ${white}MrGhostOfficial${redlite}[${yellowlite}NetHunter${redlite}]
${red} [${green}✓${red}] ${white}YouTube ${red}: ${purple}HackerFake424
${red} [${green}✓${red}] ${white}Support ${red}: ${cyan}America Cyber Hacker TeM
${red} [${green}✓${red}] ${white}GitHub  ${red}: ${green}https://github.com/MrGhostOfficial\n ${black}————————————————————————————————————————————————————>"
echo -e "                 ${bluemix}Basic/Exalted${finished}"
echo -e "          ${red}[${white}i${red}] ${green}All Pkg-Installations\n${finished}"
echo -e "${red}[${white}1${red}] ${yellow}Install Ngrok ${redlite}(${yellow}Local-Host${redlite})\n${finished}"
echo -e "${red}[${white}2${red}] ${yellow}Install Metasploit ${redlite}(${yellowlite}NoRoot${redlite})\n${finished}"
echo -e "${red}[${white}3${red}] ${yellow}Install Ubuntu Fake Root\n${finished}"
echo -e "${red}[${white}4${red}] ${yellow}Install KaliLinux Fake Root\n${finished}"
echo -e "${red}[${white}u${red}] ${cyanlite}Latest Update ${red}[${white}e${red}] ${greenlite}Exit tool ${red}[${white}t${red}] ${bluelite}Telegram Us\n${finished}"
echo -e "${black}---------------+${finished}"
echo -n -e "[ッ]${whitemix}Write Enter${finished}${black}:${redlite}> ${white}"
read type
case $type in
     i) clear
        Allpkgs_install
        backmenu
     ;;
     1) clear
        ngrok_tool
        backmenu
     ;;
     2) clear
        metasploit_tool
        backmenu
     ;;   
     3) clear
        ubuntu_tool
        backmenu
     ;;
     4) clear
        kalilinux_tool
        backmenu
     ;;
     u) clear
        reset
        update
     ;;
     t) clear
        reset
        telegram
     ;;
     e) clear
        logout_menu
     ;;
     *) figlet -f big "      Invalid" | lolcat
        figlet -f big "         Input" | lolcat
        sleep 3
        main_menu
     ;;
esac
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function Allpkgs_install(){
clear
figlet "PermissioN" | lolcat
sleep 3
echo -e ""
echo -e "${yellow}[${red}+${yellow}] ${blue}>> ${greenmix}ALL BASIC DOWNLOAD REQUIREMENTS${finished} ${blue}>>${finished}"
termux-setup-storage
sleep 2
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing termux-api${yellowlite}\nsee termux:api details-${redlite}:${greenlite}https://wiki.termux.com/wiki/Termux:API${finished}"
pkg install termux-api;pkg show termux-api
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing root-repo/tsu/x11-repo [yN] y${finished}"
pkg install root-repo;pkg install tsu;pkg install x11-repo
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing inxi/neofetch/screenfetch/sl/jp2a/cmatrix [yN] y${finished}"
pkg install cowsay -y;whereis cowsay;pkg show cowsay;pkg install inxi -y;whereis inxi;pkg show inxi;pkg install neofetch -y;whereis neofetch;pkg show neofetch;pkg install screenfetch -y;whereis screenfetch;pkg show screenfetch;pkg install sl -y;whereis sl;pkg show sl;pkg install jp2a -y;whereis jp2a;pkg show jp2a;pkg install cmatrix -y;whereis cmatrix;pkg show cmatrix
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}Congratulations termux is now stylish.${finished}"
cp -rf /data/data/com.termux/files/home/T-Advice-installer/bash.bashrc $PREFIX/etc;cd $HOME
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing git/python/python2/python-pip [yN] y${finished}"
pkg install git -y;whereis git;pkg show git;pkg install python -y;whereis python;pkg show python;pkg install python2 -y;whereis python2;pkg show python2;pkg install python3 -y;whereis python3;pkg install python-pip -y;pkg show python-pip
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}git config --global --add safe.directory '*'${finished}"
git config --global --add safe.directory '*';git config --list
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing php/nmap/openssl/dropbear/openssh [yN] y${finished}"
pkg install php -y;whereis php;pkg show php;pkg install nmap -y;whereis nmap;pkg show nmap;pkg install openssl -y;whereis openssl;pkg show openssl;pkg install openssl-tool -y;pkg install dropbear -y;pkg show dropbear;pkg install openssh -y;pkg show openssh
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pip install Cython/python -m pip install Cython${finished}"
pip install Cython;python -m pip install Cython
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}python -m pip install rich/requests/pip2 install mechanize/tqdm/bs4/requests-futures/BeautifulSoup4/python3 -m pip install bs4/colorama/speedtest-cli${finished}"
python -m pip install rich;python -m pip install requests;pip2 install mechanize;pip2 install tqdm;pip2 install bs4;pip2 install requests-futures
pip install urllib3;pip install BeautifulSoup4;python3 -m pip install bs4;pip install colorama;pip install speedtest-cli
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}bs4/requests/futures installing requirements.txt${finished}"
echo -e "bs4\nrequests\nfutures" > requirements.txt;chmod +x requirements.txt;pip2 install -r requirements.txt;rm -rf requirements.txt;cd $HOME
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pip2 install --upgrade pip requests${finished}"
pip2 install --upgrade pip requests
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}python2 -m installing fake-useragent${finished}"
python2 -m pip install fake-useragent
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing curl/wget/zip/unzip/tar [yN] y${finished}"
pkg install curl -y;whereis curl;pkg show curl;pkg install wget -y;whereis wget;pkg show wget;pkg install zip -y;whereis zip;pkg show zip;pkg install unzip -y;whereis unzip;pkg show unzip;pkg install tar -y;whereis tar;pkg show tar
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing libcurl/libicu/libgnutls/fortune/apache2 [yN] y${finished}"
pkg install libcurl -y;whereis libcurl;pkg show libcurl;pkg install libicu -y;pkg show libicu;pkg install libgnutls -y;pkg show libgnutls;pkg install fortune -y;whereis fortune;pkg show fortune;pkg install apache2 -y;pkg show apache2
echo -e ""
cp -rf $HOME/T-Advice-installer/apache2/apachectl $PREFIX/bin;chmod +x $PREFIX/bin/apachectl;cp -rf $HOME/T-Advice-installer/apache2/httpd.conf $PREFIX/etc/apache2;cd $HOME
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg/gem installing ruby/lolcat/pip lolcat==1.4? [yN] y${finished}"
whereis ruby;pkg show ruby;pip install lolcat;gem list;apt list --upgradable
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg install composer version v2.5.7 or new [yN] y${finished}"
pkg install composer -y;whereis composer;pkg show composer;pkg install php-apache -y;pkg show php-apache;pkg install php-sodium -y;pkg show php-sodium
curl -L https://getcomposer.org/installer | php -- --install-dir=/data/data/com.termux/files/usr/bin --filename=composer
export PATH=$PATH:/data/data/com.termux/files/home/.composer/vendor/bin
composer self-update;composer
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing termux-adb-fastboot-android-tools [yN] y${finished}"
pkg install android-tools -y;adb --version;pkg show android-tools;adb devices;adb devices -l
apt-get  --assume-yes upgrade;apt-get  --assume-yes install coreutils gnupg
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}if you want termux-adb-fastboot install then type ${yellowlite}y ${greenlite}and enter${finished}"
echo -e "${red}[${green}=${red}] ${yellow}See Your /termux/sources.list Files\n${black}|-------------------------------------------------|${finished}\n"
ls -A /data/data/com.termux/files/usr/etc/apt/sources.list.d
echo -n -e "\n${black}|-------------------------------------------------|\n\n${white}[㌹] ${bluelite}Do you want to continue ${redlite}(${greenlite}y${whitelite}/${greenlite}n${redlite})${black}:${redlite}> ${white}"
      read type
        if [ $type == 'y' ]
         then
         mkdir -p $PREFIX/etc/apt/sources.list.d
         echo -e "deb https://nohajc.github.io termux extras" > $PREFIX/etc/apt/sources.list.d/termux-adb.list
         wget -qP $PREFIX/etc/apt/trusted.gpg.d https://nohajc.github.io/nohajc.gpg
         pkg update;pkg install termux-adb;termux-adb version
         echo -e ""
      elif [ $type == 'n' ]
        then
        exit 0
        else
        echo "done!"
      fi
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing net-tools/iproute2/wireless-tools${finished}"
pkg install net-tools -y;pkg show net-tools;pkg install iproute2 -y;pkg show iproute2;pkg install wireless-tools -y;pkg show wireless-tools
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing file/xdis/uncompyle6/nodejs [yN] y${finished}"
pkg install file;whereis file;pkg show file;pip install xdis;pip2 install uncompyle6;python2 -m pip install xdis==5.0.11;python2 -m pip install uncompyle6==3.7.4;uncompyle6 --version;pkg install nodejs -y;pkg show nodejs
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}npm installing -g bash-obfuscate v9.5.1 or new${finished}"
npm install -g bash-obfuscate;whereis npm;npm --version
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing cmake/clang/make${finished}"
pkg install cmake -y;whereis cmake;pkg show cmake;pkg install clang -y;whereis clang;pkg show clang;pkg install make -y;whereis make;pkg show make
apt install xz-utils
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}mardis/pycdc encrypt/decrypt installing setup{finished}"
tar -xJvf mardis_pycdc.tar.xz -C /data/data/com.termux/files/home;rm -rf $HOME/mardis_pycdc.tar.xz;cd $HOME/pycdc;cmake .;make;cp -rf pycdc $PREFIX/bin;cd $HOME/mardis;python2 setup.py install;dpkg -i mardis_1.0_all.deb;mv -v mardis $PREFIX/bin;cd $HOME;rm -rf mardis pycdc
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}generating fixnodejs/fixpython in bin${finished}"
echo -e "ps aux | grep node\nprintf '\033[0;34mUse kill -9 to fixed node.js'\nprintf '\033[0;33m\nExample\033[0;31m: \033[0;32mkill -9 1637'\necho """ > fixnodejs;chmod +x fixnodejs;mv -v fixnodejs $PREFIX/bin
echo -e "ps -fA | grep python\nprintf '\033[0;34mUse kill -9 to fixed python'\nprintf '\033[0;33m\nExample\033[0;31m: \033[0;32mkill -9 25557'\necho """ > fixpython;chmod +x fixpython;mv -v fixpython $PREFIX/bin
echo -e ""
clear
cd $HOME;neofetch --ascii_distro Arch
echo -e "    ${yellowlite}MrGhost👻\n${redlite}[${yellowlite}i${redlite}] ${greenlite}All Successfully installed${finished}\n"
cd /data/data/com.termux/files/home;ls
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function ngrok_tool(){
echo -e "${finished}"
clear;reset
toilet -f smmono9 "Select OptioN" | lolcat
echo -e " ${red}+${yellow}———${black}———${yellow}———${black}———${red}[ ${green}Secondary~Menu${red} ]${yellow}———${black}———${yellow}———${black}———${red}+${finished}"
echo -e "  ${cyanlite}| ${red}[${white}1${red}] ${yellow}Ngrok Install New ${red}(${yellowlite}LinuxARM${red})        ${cyanlite}|\n     ${black}|${finished}"
echo -e "  ${black}| ${red}[${white}2${red}] ${yellow}Ngrok Install New ${red}(${yellowlite}LinuxARM64${red})      ${black}|\n     ${black}|${finished}"
echo -e "  ${cyanlite}| ${red}[${white}3${red}] ${yellow}Ngrok Install Old ${red}(${yellowlite}LinuxARM${red})        ${cyanlite}|\n     ${black}|${finished}"
echo -e "  ${black}| ${red}[${white}4${red}] ${yellow}Ngrok Install Method ${red}(${yellowlite}Advance${red})      ${black}|\n     ${black}|${finished}"
echo -e "  ${cyanlite}| ${red}[${white}5${red}] ${yellow}Script Coming Soon${redlite}..                ${cyanlite}|\n     ${black}|${finished}"
echo -e "  ${black}| ${red}[${white}0${red}] ${yellow}Go Back Menu                        ${black}|${finished}"
echo -e "  ${red}+${black}——${yellow}——${black}——${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}——${red}+${finished}\n"
echo -n -e "[ッ]${whitemix}Write Enter${finished}${black}:${redlite}> ${white}"
read type
case $type in
      1) ngrok_newarm
      ;;
      2) ngrok_newarm64
      ;;
      3) ngrok_oldarm
      ;;
      4) ngrok_advance
      ;;
      5) ngrok_tool
      ;;
      0) main_menu
      ;;
      *) echo
         echo -e " ${whitelite}[${redlite}~${whitelite}] ${bluelite}Wrong ${cyanlite}Input ${bluelite}Try ${cyanlite}Again${redlite}.${finished}"
         sleep 3
         ngrok_tool
      ;;
esac
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function ngrok_newarm(){
toilet -f smmono9 -F border "i-Ngrok"
echo -e "
                
    ${white}SCRIPT BY ${yellowlite}|D|E|D|S|H|I|T| ${white}EDITED BY ${yellowlite}MrGHOST👻
              ${redlite}[ ${green}MrGhostClassic ${redlite}]${finished}"
echo -e "${whitelite}[${yellow}INFO${whitelite}] ${cyan}if you dont understand how to use it then \nFollow Instruction in gitHub or see my tutorial${redlite}.${finished}"
sleep 3
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing update/upgrade [yN] y${finished}"
apt update;apt-get upgrade -y
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing wget/curl/tar [yN] y${finished}"
pkg install wget curl tar -y
echo -e ""
cd /data/data/com.termux/files/home;rm -rf ngrok ngrok-v3-stable-linux-arm.tgz
wget -L https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm.tgz
echo -e ""
tar -xvzf ngrok-v3-stable-linux-arm.tgz;rm -rf ngrok-v3-stable-linux-arm.tgz;chmod +x ngrok
ls|grep ngrok;ls -la|grep ngrok
cd /data/data/com.termux/files/home;./ngrok config add-authtoken 2Qd7sB4fJ228nIfXLa8gIewQ8Ij_2GNYrAvchVF4gaAwQK5ML
echo -e ""
echo -e "${bluelite}[${greenlite}s${bluelite}] ${redlite}>> ${greenlite}Congratulations ${cyan}Ngrok ${redlite}(${bluelite}LinuxARM${redlite})\n       ${greenlite}as been installed run ${redlite}(${yellowlite} ./ngrok http 80 ${redlite}) ${finished}"
echo -e "\n"
exit 0
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function ngrok_newarm64(){
toilet -f smmono9 -F border "i-Ngrok"
echo -e "
                
    ${white}SCRIPT BY ${yellowlite}|D|E|D|S|H|I|T| ${white}EDITED BY ${yellowlite}MrGHOST👻
              ${redlite}[ ${green}MrGhostClassic ${redlite}]${finished}"
echo -e "${whitelite}[${yellow}INFO${whitelite}] ${cyan}if you dont understand how to use it then \nFollow Instruction in gitHub or see my tutorial${redlite}.${finished}"
sleep 3
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing update/upgrade [yN] y${finished}"
apt update;apt upgrade -y
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing wget/curl/tar [yN] y${finished}"
pkg install wget curl tar -y
echo -e ""
cd /data/data/com.termux/files/home;rm -rf ngrok ngrok-v3-stable-linux-arm64.tgz
wget -L https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.tgz
echo -e ""
tar -xvzf ngrok-v3-stable-linux-arm64.tgz;rm -rf ngrok-v3-stable-linux-arm64.tgz;chmod +x ngrok
ls|grep ngrok;ls -la|grep ngrok
cd /data/data/com.termux/files/home;./ngrok config add-authtoken 2Qd7sB4fJ228nIfXLa8gIewQ8Ij_2GNYrAvchVF4gaAwQK5ML
echo -e ""
echo -e "${bluelite}[${greenlite}s${bluelite}] ${redlite}>> ${greenlite}Congratulations ${cyan}Ngrok ${redlite}(${bluelite}LinuxARM64${redlite})\n       ${greenlite}as been installed run ${redlite}(${yellowlite} ./ngrok tcp 4444 ${redlite}) ${finished}"
echo -e "\n"
exit 0
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function ngrok_oldarm(){
toilet -f smmono9 -F border "i-Ngrok"
echo -e "
                
    ${white}SCRIPT BY ${yellowlite}|D|E|D|S|H|I|T| ${white}EDITED BY ${yellowlite}MrGHOST👻
              ${redlite}[ ${green}MrGhostClassic ${redlite}]${finished}"
echo -e "${whitelite}[${yellow}INFO${whitelite}] ${cyan}if you dont understand how to use it then \nFollow Instruction in gitHub or see my tutorial${redlite}.${finished}"
sleep 3
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing update/upgrade [yN] y${finished}"
apt update;apt upgrade -y;pkg install nodejs -y;pkg install nodejs-lts -y
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing wget/curl/tar [yN] y${finished}"
pkg install wget curl tar -y
echo -e ""
cd /data/data/com.termux/files/home;rm -rf ngrok .config ngrok-v3-stable-linux-arm.tgz
tar -xvzf /data/data/com.termux/files/home/T-Advice-installer/ngrok_install/LinuxARM/ngrok-v3-stable-linux-arm.tgz;cd ..;cp -rf .config $HOME;mv -f /data/data/com.termux/files/home/T-Advice-installer/ngrok_install/LinuxARM/ngrok $HOME;chmod +x ngrok
ls|grep ngrok;ls -la|grep ngrok
cd /data/data/com.termux/files/home;./ngrok config add-authtoken 2Qd7sB4fJ228nIfXLa8gIewQ8Ij_2GNYrAvchVF4gaAwQK5ML
echo -e ""
echo -e "${bluelite}[${greenlite}s${bluelite}] ${redlite}>> ${greenlite}Congratulations ${cyan}Ngrok Old ${redlite}(${bluelite}LinuxARM${redlite})\n       ${greenlite}as been installed run ${redlite}(${yellowlite} ./ngrok http 8080 ${redlite}) ${finished}"
echo -e "\n"
exit 0
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function ngrok_advance(){
toilet -f smmono9 -F border "i-Ngrok"
echo -e "
                
    ${white}SCRIPT BY ${yellowlite}|D|E|D|S|H|I|T| ${white}EDITED BY ${yellowlite}MrGHOST👻
              ${redlite}[ ${green}MrGhostClassic ${redlite}]${finished}"
echo -e "${whitelite}[${yellow}INFO${whitelite}] ${cyan}if you dont understand how to use it then \nFollow Instruction in gitHub or see my tutorial${redlite}.${finished}"
sleep 3
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing update/upgrade [yN] y${finished}"
apt update;apt upgrade -y;pkg install nodejs -y;pkg install nodejs-lts -y
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing wget/curl/tar [yN] y${finished}"
pkg install wget curl tar -y
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}npm install ngrok -g github.com/bubenshchykov/ngrok${finished}"
npm install ngrok -g
echo -e ""
cd /data/data/com.termux/files/home;rm -rf ngrok ngrok-v3-stable-linux-arm64.tgz
wget -L https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.tgz
echo -e ""
tar -xvzf ngrok-v3-stable-linux-arm64.tgz;rm -rf ngrok-v3-stable-linux-arm64.tgz;chmod +x ngrok
ls|grep ngrok;ls -la|grep ngrok
cd /data/data/com.termux/files/home;./ngrok config add-authtoken 2Qd7sB4fJ228nIfXLa8gIewQ8Ij_2GNYrAvchVF4gaAwQK5ML
echo -e ""
echo -e "${bluelite}[${greenlite}s${bluelite}] ${redlite}>> ${greenlite}Congratulations ${cyan}Ngrok ${redlite}(${bluelite}LinuxARM64${redlite})\n       ${greenlite}as been installed run ${redlite}(${yellowlite} ngrok http 8080 ${redlite}) ${finished}"
echo -e "\n"
exit 0
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function metasploit_tool(){
echo -e "${finished}"
clear;reset
toilet -f smmono9 "Select OptioN" | lolcat
echo -e " ${red}+${yellow}———${black}———${yellow}———${black}———${red}[ ${green}Secondary~Menu${red} ]${yellow}———${black}———${yellow}———${black}———${red}+${finished}"
echo -e "  ${cyanlite}| ${red}[${white}1${red}] ${yellow}Metasploit Install ${red}(${yellowlite}Direct${red})        ${cyanlite}|\n     ${black}|${finished}"
echo -e "  ${black}| ${red}[${white}2${red}] ${yellow}Metasploit Install ${red}(${yellowlite}Manual${red})        ${black}|\n     ${black}|${finished}"
echo -e "  ${cyanlite}| ${red}[${white}3${red}] ${yellow}Script Coming Soon${redlite}..               ${cyanlite}|\n     ${black}|${finished}"
echo -e "  ${black}| ${red}[${white}0${red}] ${yellow}Go Back Menu                       ${black}|${finished}"
echo -e "  ${red}+${black}——${yellow}——${black}——${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}——${red}+${finished}\n"
echo -n -e "[ッ]${whitemix}Write Enter${finished}${black}:${redlite}> ${white}"
read type
case $type in
      1) metasploit_direct
      ;;
      2) metasploit_manual
      ;;
      3) metasploit_tool
      ;;
      0) main_menu
      ;;
      *) echo
         echo -e " ${whitelite}[${redlite}~${whitelite}] ${bluelite}Wrong ${cyanlite}Input ${bluelite}Try ${cyanlite}Again${redlite}.${finished}"
         sleep 3
         metasploit_tool
      ;;
esac
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function metasploit_direct(){
clear
toilet -f smmono9 -F border "i-MetAsploit"
echo -e "
                
    ${white}SCRIPT BY ${yellowlite}|D|E|D|S|H|I|T| ${white}EDITED BY ${yellowlite}MrGHOST👻
              ${redlite}[ ${green}MrGhostClassic ${redlite}]${finished}"
echo -e "${whitelite}[${yellow}INFO${whitelite}] ${cyanlite}if you dont understand how to use it then \nFollow Instruction in gitHub or see my tutorial${redlite}.${finished}"
echo -e ""
echo -e "${yellow}[${red}+${yellow}] ${blue}>> ${greenmix}GIVE STORAGE PERMISSION${finished} ${blue}>>${finished}"
termux-setup-storage
sleep 2
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing inxi/neofetch/termux-api/openssh/python-pip/python3/nodejs -y${finished}"
cd $HOME;pkg install inxi -y;pkg install neofetch -y;pkg install termux-api;pkg install openssh -y;pkg install python-pip -y;pkg install python3 -y;pkg install nodejs -y
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}rm -rf metasploit-framework ${redlite}2>${greenlite}.log.txt\n       mkdir metasploit-framework ${redlite}2>${greenlite}.log.txt${finished}"
rm -rf metasploit-framework 2>.log.txt
mkdir metasploit-framework 2>.log.txt
sleep 3
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing autoconf zip unzip openssl postgresql \nncurses-utils wget tar etc.. ${finished}"
apt purge ruby -y;apt autoremove -y
pkg upgrade -y -o Dpkg::Options::="--force-confnew"
pkg install -y binutils python autoconf bison clang coreutils curl findutils apr apr-util postgresql openssl readline libffi libgmp libpcap libsqlite libgrpc libtool libxml2 libxslt ncurses make ncurses-utils ncurses git wget unzip zip tar termux-tools termux-elf-cleaner pkg-config git ruby -o Dpkg::Options::="--force-confnew" python-pip
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}python3 -m pip install --upgrade pip\n       python3 -m pip install requests${finished}"
python3 -m pip install requests
pip3 --version
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}Fix error for ruby bigdecimal${finished}"
#!/data/data/com.termux/files/usr/bin/sh
##
##  Fix linking error for Ruby Bigdecimal
##  native extensions.
##
source <(curl -sL https://github.com/termux/termux-packages/files/2912002/fix-ruby-bigdecimal.sh.txt)
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}checking/removing old ${yellowlite}metasploit-framework\n${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}github.com/rapid7/${yellowlite}metasploit-framework ${greenlite}installing${redlite}..${finished}"
rm -rf /data/data/com.termux/files/home/metasploit-framework;cd $HOME
git clone https://github.com/rapid7/metasploit-framework.git --depth=1
echo -e ""
cd /data/data/com.termux/files/home/metasploit-framework
#sed '/rbnacl/d' -i Gemfile.lock
#sed '/rbnacl/d' -i metasploit-framework.gemspec
sed -i 's/nio4r (2.5.8)/nio4r (2.5.9)/' Gemfile.lock
#sed -i "277,\$ s/2.8.0/2.2.0/" Gemfile.lock
gem install bundler
declare NOKOGIRI_VERSION=$(cat Gemfile.lock | grep -i nokogiri | sed 's/nokogiri [\(\)]/(/g' | cut -d ' ' -f 5 | grep -oP "(.).[[:digit:]][\w+]?[.].")
#sed 's|nokogiri (1.*)|nokogiri (1.8.0)|g' -i Gemfile.lock
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}gem install nokogiri nokogiri_version --use-system-libraries${finished}"
gem install nokogiri -v $NOKOGIRI_VERSION -- --use-system-libraries
#For aarch64 if nokogiri problem persist do this
#bundle config build.nokogiri "--use-system-libraries --with-xml2-include=$PREFIX/include/libxml2"; bundle install
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}bundle install -j$(nproc --all)/etc..${finished}"
gem install actionview -v 7.0.0
bundle update activesupport
bundle update --bundler
bundle install -j$(nproc --all)
bundle update --bundler
echo -e ""
#$PREFIX/bin/find -type f -executable -exec termux-fix-shebang \{\} \;
#rm ./modules/auxiliary/gather/http_pdf_authors.rb
if [ -e $PREFIX/bin/msfconsole ];then
	rm $PREFIX/bin/msfconsole
fi
if [ -e $PREFIX/bin/msfvenom ];then
	rm $PREFIX/bin/msfvenom
fi
if [ -e $PREFIX/bin/msfrpcd ];then
	rm $PREFIX/bin/msfrpcd
fi
ln -s /data/data/com.termux/files/home/metasploit-framework/msfconsole $PREFIX/bin/
ln -s /data/data/com.termux/files/home/metasploit-framework/msfvenom $PREFIX/bin/
ln -s /data/data/com.termux/files/home/opt/metasploit-framework/msfrpcd $PREFIX/bin/

termux-elf-cleaner $PREFIX/lib/ruby/gems/*/gems/pg-*/lib/pg_ext.so
#sed -i '355 s/::Exception, //' $PREFIX/bin/msfvenom
#sed -i '481, 483 {s/^/#/}' $PREFIX/bin/msfvenom
#sed -Ei "s/(\^\\\c\s+)/(\^\\\C-\\\s)/" $PREFIX/opt/metasploit-framework/lib/msf/core/exploit/remote/vim_soap.rb

# Warning occurs during payload generation

#sed -i '86 {s/^/#/};96 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/concurrent-ruby-1.0.5/lib/concurrent/atomic/ruby_thread_local_var.rb
#sed -i '442, 476 {s/^/#/};436, 438 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/logging-2.3.1/lib/logging/diagnostic_context.rb

## openssl issue has been fixed 

#sed -i '13,15 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/encryption_algorithm/functionable.rb
#sed -i '14 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp256.rb
#sed -i '14 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp384.rb
#sed -i '14 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp521.rb
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}Congratulations termux is now stylish.${finished}"
cp -rf /data/data/com.termux/files/home/T-Advice-installer/bash.bashrc $PREFIX/etc;cd $HOME
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg install apache2 -y${finished}"
pkg install apache2 -y
cp -rf $HOME/T-Advice-installer/apache2/apachectl $PREFIX/bin;chmod +x $PREFIX/bin/apachectl;cp -rf $HOME/T-Advice-installer/apache2/httpd.conf $PREFIX/etc/apache2;cd $HOME
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}ruby v3.2.2 (2023-03-30 revision e51014f9c0) [aarch64-linux-android] \ngem v3.4.10${finished}"
ruby -v;gem --version;inxi
sleep 3
echo -e ""
echo -e "${bluelite}[${greenlite}s${bluelite}] ${redlite}>> ${greenlite}Congratulations ${bluelite}Metasploit-framework\n       ${greenlite}as been installed run ${redlite}(${yellowlite} msfconsole ${redlite}) ${finished}"
echo -e "\n"
exit 0
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function metasploit_manual(){
echo -e "${red}[${green}INFO${red}] ${cyan}If you want install my backup metasploit ${yellowlite}v6.3.22 ${cyan}manual then first download this ${yellowlite}Metasploit-framework.tar.xz ${cyan}and move this file to your phone memory download folder, if your downloading and moved complete then type ${green}y ${cyan}and enter or not downloaded then type ${green}n ${cyan}go first download and come back again.👀${finished}"
echo -e ""
echo -e "${yellow}[${red}+${yellow}] ${blue}>> ${greenmix}GIVE STORAGE PERMISSION${finished} ${blue}>>${finished}"
termux-setup-storage
sleep 2
echo -e ""
echo -e "${purple}Note${white}: ${yellow}This is help you to quickly installing metasploit, You need 2GB space in the device for installing this metasploit-framework${yellowlite}.${finished}"
termux-open-url "https://mega.nz/file/gP9R3brQ#HTj4ws44ncFc4eDuBKp1yzE1hd5L_So_g9Wbr6USX4U"
echo -e "${red}[${green}=${red}] ${white}See Your /storage/download Files\n${black}|-------------------------------------------------|${finished}\n"
cd /data/data/com.termux/files/home/storage/shared/download;ls -A
echo -n -e "\n${black}|-------------------------------------------------|\n\n${white}[㌹] ${bluelite}Do you want to continue ${redlite}(${greenlite}y${whitelite}/${greenlite}n${redlite})${black}:${redlite}> ${white}"
      read type
        if [ $type == 'y' ]
         then
         cd /data/data/com.termux/files/home
         echo -e "${red}[${green}●${red}] ${green}Your File Successfully Removed${finished}"
      elif [ $type == 'n' ]
        then
        metasploit_tool
        else
        echo -e " \n${whitelite}[${redlite}~${whitelite}] ${red}Wr${bluelite}ong ${red}In${cyanlite}put ${red}T${bluelite}ry ${red}Ag${cyanlite}ain${redlite}.${finished}"
        sleep 3
        metasploit_manual
      fi
clear
toilet -f smmono9 -F border "i-MetAsploit"
echo -e "
                
    ${white}SCRIPT BY ${yellowlite}|D|E|D|S|H|I|T| ${white}EDITED BY ${yellowlite}MrGHOST👻
              ${redlite}[ ${green}MrGhostClassic ${redlite}]${finished}"
echo -e "${whitelite}[${yellow}INFO${whitelite}] ${cyanlite}if you dont understand how to use it then \nFollow Instruction in gitHub or see my tutorial${redlite}.${finished}"
sleep 3
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing inxi/neofetch/termux-api/openssh/python-pip/python3/nodejs -y${finished}"
cd $HOME;pkg install inxi -y;pkg install neofetch -y;pkg install termux-api;pkg install openssh -y;pkg install python-pip -y;pkg install python3 -y;pkg install nodejs -y
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}rm -rf metasploit-framework ${redlite}2>${greenlite}.log.txt\n       mkdir metasploit-framework ${redlite}2>${greenlite}.log.txt${finished}"
rm -rf metasploit-framework 2>.log.txt
mkdir metasploit-framework 2>.log.txt
sleep 3
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing autoconf zip unzip openssl postgresql \nncurses-utils wget tar etc.. ${finished}"
apt purge ruby -y;apt autoremove -y
pkg upgrade -y -o Dpkg::Options::="--force-confnew"
pkg install -y binutils python autoconf bison clang coreutils curl findutils apr apr-util postgresql openssl readline libffi libgmp libpcap libsqlite libgrpc libtool libxml2 libxslt ncurses make ncurses-utils ncurses git wget unzip zip tar termux-tools termux-elf-cleaner pkg-config git ruby -o Dpkg::Options::="--force-confnew" python-pip
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}python3 -m pip install --upgrade pip\n       python3 -m pip install requests${finished}"
python3 -m pip install requests
pip3 --version
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}Fix error for ruby bigdecimal${finished}"
#!/data/data/com.termux/files/usr/bin/sh
##
##  Fix linking error for Ruby Bigdecimal
##  native extensions.
##
apt install -yq patchelf
for i in aarch64-linux-android arm-linux-androideabi \
    i686-linux-android x86_64-linux-android; do

    if [ -e "$PREFIX/lib/ruby/2.6.0/${i}/bigdecimal.so" ]; then
        if [ -n "$(patchelf --print-needed "$PREFIX/lib/ruby/2.6.0/${i}/bigdecimal/util.so" | grep bigdecimal.so)" ]; then
            exit 0
        fi

        patchelf --add-needed \
            "$PREFIX/lib/ruby/2.6.0/${i}/bigdecimal.so" \
            "$PREFIX/lib/ruby/2.6.0/${i}/bigdecimal/util.so"
    fi
done
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}checking/removing old ${yellowlite}metasploit-framework\n${bluelite}[${yellowlite}❢${bluelite}] ${redlite}>> ${greenlite}Please wait for some time${redlite}..${greenlite}your metasploit\nfiles remove from${yellowlite}/sdcard/download ${greenlite}to ${yellowlite}termux/home${finished}"
rm -rf /data/data/com.termux/files/home/metasploit-framework;cd $HOME
msfpath='/data/data/com.termux/files/home'
cp -rf /sdcard/download/metasploit-framework.tar.xz $HOME;tar -xJvf metasploit-framework.tar.xz;rm -rf metasploit-framework.tar.xz;cd $HOME/metasploit-framework
echo -e ""
cd /data/data/com.termux/files/home/metasploit-framework
#sed '/rbnacl/d' -i Gemfile.lock
#sed '/rbnacl/d' -i metasploit-framework.gemspec
sed -i 's/nio4r (2.5.8)/nio4r (2.5.9)/' Gemfile.lock
#sed -i "277,\$ s/2.8.0/2.2.0/" Gemfile.lock
gem install bundler
declare NOKOGIRI_VERSION=$(cat Gemfile.lock | grep -i nokogiri | sed 's/nokogiri [\(\)]/(/g' | cut -d ' ' -f 5 | grep -oP "(.).[[:digit:]][\w+]?[.].")
#sed 's|nokogiri (1.*)|nokogiri (1.8.0)|g' -i Gemfile.lock
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}gem install nokogiri nokogiri_version --use-system-libraries${finished}"
gem install nokogiri -v $NOKOGIRI_VERSION -- --use-system-libraries
#For aarch64 if nokogiri problem persist do this
#bundle config build.nokogiri "--use-system-libraries --with-xml2-include=$PREFIX/include/libxml2"; bundle install
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}bundle install -j$(nproc --all)/etc..${finished}"
gem install actionview -v 7.0.0
bundle update activesupport
bundle update --bundler
bundle install -j$(nproc --all)
bundle update --bundler
echo -e ""
#$PREFIX/bin/find -type f -executable -exec termux-fix-shebang \{\} \;
#rm ./modules/auxiliary/gather/http_pdf_authors.rb
if [ -e $PREFIX/bin/msfconsole ];then
	rm $PREFIX/bin/msfconsole
fi
if [ -e $PREFIX/bin/msfvenom ];then
	rm $PREFIX/bin/msfvenom
fi
if [ -e $PREFIX/bin/msfrpcd ];then
	rm $PREFIX/bin/msfrpcd
fi
ln -s /data/data/com.termux/files/home/metasploit-framework/msfconsole $PREFIX/bin/;ln -s /data/data/com.termux/files/home/metasploit-framework/msfvenom $PREFIX/bin/;ln -s /data/data/com.termux/files/home/opt/metasploit-framework/msfrpcd $PREFIX/bin/

termux-elf-cleaner $PREFIX/lib/ruby/gems/*/gems/pg-*/lib/pg_ext.so
#sed -i '355 s/::Exception, //' $PREFIX/bin/msfvenom
#sed -i '481, 483 {s/^/#/}' $PREFIX/bin/msfvenom
#sed -Ei "s/(\^\\\c\s+)/(\^\\\C-\\\s)/" $PREFIX/opt/metasploit-framework/lib/msf/core/exploit/remote/vim_soap.rb

# Warning occurs during payload generation

#sed -i '86 {s/^/#/};96 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/concurrent-ruby-1.0.5/lib/concurrent/atomic/ruby_thread_local_var.rb
#sed -i '442, 476 {s/^/#/};436, 438 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/logging-2.3.1/lib/logging/diagnostic_context.rb

## openssl issue has been fixed 

#sed -i '13,15 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/encryption_algorithm/functionable.rb
#sed -i '14 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp256.rb
#sed -i '14 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp384.rb
#sed -i '14 {s/^/#/}' $PREFIX/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp521.rb
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}Congratulations termux is now stylish.${finished}"
cp -rf /data/data/com.termux/files/home/T-Advice-installer/bash.bashrc $PREFIX/etc;cd $HOME
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg install apache2 -y${finished}"
pkg install apache2 -y
cp -rf $HOME/T-Advice-installer/apache2/apachectl $PREFIX/bin;chmod +x $PREFIX/bin/apachectl;cp -rf $HOME/T-Advice-installer/apache2/httpd.conf $PREFIX/etc/apache2;cd $HOME
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}ruby v3.2.2 (2023-03-30 revision e51014f9c0) [aarch64-linux-android] \ngem v3.4.10${finished}"
ruby -v;gem --version;inxi
sleep 3
echo -e ""
echo -e "${bluelite}[${greenlite}s${bluelite}] ${redlite}>> ${greenlite}Congratulations ${bluelite}Metasploit-framework\n       ${greenlite}as been installed run ${redlite}(${yellowlite} msfconsole ${redlite}) ${finished}"
echo -e "\n"
exit 0
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function ubuntu_tool(){
echo -e "${finished}"
clear;reset
toilet -f smmono9 "Select OptioN" | lolcat
echo -e " ${red}+${yellow}———${black}———${yellow}———${black}———${red}[ ${green}Secondary~Menu${red} ]${yellow}———${black}———${yellow}———${black}———${red}+\n  ${cyanlite}| ${red}[${white}1${red}] ${yellow}Install Ubuntu Fake Root           ${cyanlite}|\n     ${black}|\n  ${black}| ${red}[${white}2${red}] ${yellow}Ubuntu Installed Status            ${black}|\n     ${black}|\n  ${cyanlite}| ${red}[${white}3${red}] ${yellow}Script Coming Soon${redlite}..               ${cyanlite}|\n     ${black}|\n  ${black}| ${red}[${white}0${red}] ${yellow}Go Back Menu                       ${black}|\n  ${red}+${black}——${yellow}——${black}——${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}——${red}+${finished}\n"
echo -n -e "[ッ]${whitemix}Write Enter${finished}${black}:${redlite}> ${white}"
read type
case $type in
      1) ubuntu_install
      ;;
      2) ubuntu_status
      ;;
      3) reset
      ubuntu_tool
      ;;
      0) main_menu
      ;;
      *) echo
         echo -e " ${whitelite}[${redlite}~${whitelite}] ${bluelite}Wrong ${cyanlite}Input ${bluelite}Try ${cyanlite}Again${redlite}.${finished}"
         sleep 3
         ubuntu_tool
      ;;
esac
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function ubuntu_install(){
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}pkg installing proot-distro [yN] y${finished}"
pkg install proot-distro -y
rm -rf $PREFIX/bin/ubuntu;cd $HOME;rm -rf /data/data/com.termux/files/usr/var/lib/proot-distro;cd $HOME/T-Advice-installer/proot-distro-3.0.1;chmod +x install.sh proot-distro.sh bootstrap-rootfs.sh;cd distro-plugins;chmod +x *;cd ..;./install.sh;cd $HOME;proot-distro install ubuntu
cd $PREFIX/bin;echo "proot-distro login ubuntu" > ubuntu;chmod 7777 ubuntu
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}Congratulations ubuntu is now stylish.${finished}"
cp -rf /data/data/com.termux/files/home/T-Advice-installer/proot-distro-3.0.1/bash.bashrc /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/ubuntu/etc;cd $HOME
sleep 5;clear
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${cyanlite}[INFO] Hi friends run ubuntu and use this shortcut just copy and paste To Setup your Fake Root.🫠\n${yellowlite}apt-get update;apt install neofetch -y;clear;neofetch;ls\n${bluelite}[${greenlite}s${bluelite}] ${redlite}>>${greenlite} Congratulations ${bluelite}Ubuntu Proot-distro\n       ${greenlite}as been installed run ${redlite}(${yellowlite} ubuntu ${redlite}) ${finished}\n"
exit 0
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function ubuntu_status(){
echo -e "${finished}"
clear;reset
toilet -f smmono9 "Select OptioN" | lolcat
echo -e "${red}[${yellow}INFO${red}] ${cyan}Hi friends you can see here your ubuntu fake root Installation status if you need more inspiration then you can install here${finished}"
proot-distro list
echo -e " ${red}+${yellow}———${black}———${yellow}———${black}———${red}[ ${green}Secondary~Menu${red} ]${yellow}———${black}———${yellow}———${black}———${red}+\n  ${cyanlite}| ${red}[${white}i1${red}] ${yellow}Proot-distro login ubuntu\n  ${cyanlite}| ${red}[${white}u1${red}] ${yellow}Proot-distro uninstall ubuntu      ${cyanlite}|\n     ${black}|\n  ${black}| ${red}[${white}i2${red}] ${yellow}Proot-distro install Alpine\n    ${red}[${white}u2${red}] ${yellow}Proot-distro uninstall Alpine\n  ${black}| ${red}[${white}l2${red}] ${yellow}Proot-distro login Alpine          ${black}|\n     ${black}|\n  ${cyanlite}| ${red}[${white}i3${red}] ${yellow}Proot-distro install Archlinux\n    ${red}[${white}u3${red}] ${yellow}Proot-distro uninstall Archlinux\n  ${cyanlite}| ${red}[${white}l3${red}] ${yellow}Proot-distro login Archlinux       ${cyanlite}|\n     ${black}|\n  ${black}| ${red}[${white}i4${red}] ${yellow}Proot-distro install Debian\n    ${red}[${white}u4${red}] ${yellow}Proot-distro uninstall Debian\n  ${black}| ${red}[${white}l4${red}] ${yellow}Proot-distro login Debian          ${black}|\n     ${black}|\n  ${cyanlite}| ${red}[${white}i5${red}] ${yellow}Proot-distro install Fedora\n    ${red}[${white}u5${red}] ${yellow}Proot-distro uninstall Fedora\n  ${cyanlite}| ${red}[${white}l5${red}] ${yellow}Proot-distro login Fedora          ${cyanlite}|\n     ${black}|\n  ${black}| ${red}[${white}i6${red}] ${yellow}Proot-distro install AArch64\n    ${red}[${white}u6${red}] ${yellow}Proot-distro uninstall AArch64\n  ${black}| ${red}[${white}l6${red}] ${yellow}Proot-distro login AArch64         ${black}|\n     ${black}|\n  ${cyanlite}| ${red}[${white}i7${red}] ${yellow}Proot-distro install Opensuse\n    ${red}[${white}u7${red}] ${yellow}Proot-distro uninstall Opensuse\n  ${cyanlite}| ${red}[${white}l7${red}] ${yellow}Proot-distro login Opensuse        ${cyanlite}|\n     ${black}|\n  ${black}| ${red}[${white}i8${red}] ${yellow}Proot-distro install Void\n    ${red}[${white}u8${red}] ${yellow}Proot-distro uninstall Void\n  ${black}| ${red}[${white}l8${red}] ${yellow}Proot-distro login Void            ${black}|\n     ${black}|\n  ${cyanlite}| ${red}[${white}✸${red}] ${yellow}Script Coming Soon${redlite}..\n  ${cyanlite}| ${red}[${white}0${red}] ${yellow}Go Back Menu                        ${cyanlite}|\n  ${red}+${black}——${yellow}——${black}——${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}——${red}+${finished}\n"
echo -n -e "[ッ]${whitemix}Write Enter${finished}${black}:${redlite}> ${white}"
read type
case $type in
      i1) 
      proot-distro login ubuntu
      ubuntu_status
      ;;
      u1) 
      echo -e "${greenlite}proot-distro uninstall alpine successfully done${redlite}.${finished}"
      sleep 3
      proot-distro remove ubuntu
      ubuntu_status
      ;;
      i2) 
      proot-distro install alpine
      ubuntu_status
      ;;
      u2) 
      echo -e "${greenlite}proot-distro uninstall debian successfully done${redlite}.${finished}"
      sleep 3
      proot-distro remove alpine
      ubuntu_status
      ;;
      l2) 
      proot-distro login alpine
      ubuntu_status
      ;;
      i3) 
      proot-distro install archlinux
      ubuntu_status
      ;;
      u3) 
      echo -e "${greenlite}proot-distro uninstall archlinux successfully done${redlite}.${finished}"
      sleep 3
      proot-distro remove archlinux
      ubuntu_status
      ;;
      l3) 
      proot-distro login archlinux
      ubuntu_status
      ;;
      i4) 
      proot-distro install debian
      ubuntu_status
      ;;
      u4) 
      echo -e "${greenlite}proot-distro uninstall debian successfully done${redlite}.${finished}"
      sleep 3
      proot-distro remove debian
      ubuntu_status
      ;;
      l4) 
      proot-distro login debian
      ubuntu_status
      ;;
      i5) 
      proot-distro install fedora
      ubuntu_status
      ;;
      u5) 
      echo -e "${greenlite}proot-distro uninstall archlinux successfully done${redlite}.${finished}"
      sleep 3
      proot-distro remove fedora
      ubuntu_status
      ;;
      l5) 
      proot-distro login fedora
      ubuntu_status
      ;;
      i6) 
      proot-distro install manjaro-aarch64
      ubuntu_status
      ;;
      u6) 
      echo -e "${greenlite}proot-distro uninstall archlinux successfully done${redlite}.${finished}"
      sleep 3
      proot-distro remove manjaro-aarch64
      ubuntu_status
      ;;
      l6) 
      proot-distro login manjaro-aarch64
      ubuntu_status
      ;;
      i7) 
      proot-distro install opensuse
      ubuntu_status
      ;;
      u7) 
      echo -e "${greenlite}proot-distro uninstall archlinux successfully done${redlite}.${finished}"
      sleep 3
      proot-distro remove opensuse
      ubuntu_status
      ;;
      l7) 
      proot-distro login opensuse
      ubuntu_status
      ;;
      i8) 
      proot-distro install void
      ubuntu_status
      ;;
      u8) 
      echo -e "${greenlite}proot-distro uninstall archlinux successfully done${redlite}.${finished}"
      sleep 3
      proot-distro remove void
      ubuntu_status
      ;;
      l8) 
      proot-distro login void
      ubuntu_status
      ;;
      ✸) reset
      ubuntu_status
      ;;
      0) ubuntu_tool
      ;;
      *) echo
         echo -e " ${whitelite}[${redlite}~${whitelite}] ${bluelite}Wrong ${cyanlite}Input ${bluelite}Try ${cyanlite}Again${redlite}.${finished}"
         sleep 3
         ubuntu_status
      ;;
esac
}

#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function kalilinux_tool(){
echo -e "${finished}"
clear;reset
printf "${red}##################################################\n${red}##                                              ##\n${red}##  88      a8P         db        88        88  ##\n${red}##  88    .88'         d88b       88        88  ##\n${red}##  88   88'          d8''8b      88        88  ##\n${red}##  88 d88           d8'  '8b     88        88  ##\n${red}##  8888'88.        d8YaaaaY8b    88        88  ##\n${red}##  88P   Y8b      d8''''''''8b   88        88  ##\n${red}##  88     '88.   d8'        '8b  88        88  ##\n${red}##  88       Y8b d8'          '8b 888888888 88  ##\n${red}##                                              ##\n${red}####  ############# NetHunter ####################${finished}\n"
printf "${red}[${yellow}+${red}] ${yellow}To start Kali NetHunter, type:\n${red}[${yellow}+${red}] ${green}nh                    ${red}# ${yellow}Shortcut for nethunter${finished}\n${red}[${yellow}+${red}] ${green}nethunter             ${red}# ${yellow}To start NetHunter CLI\n${red}[${yellow}+${red}] ${green}nethunter kex passwd  ${red}# ${yellow}To set the KeX password\n${red}[${yellow}+${red}] ${green}nethunter kex &       ${red}# ${yellow}To start NetHunter GUI\n${red}[${yellow}+${red}] ${green}nethunter kex stop    ${red}# ${yellow}To stop NetHunter GUI\n${red}[${yellow}+${red}] ${green}nh -r                 ${red}# ${yellow}To run NetHunter as root\n"
echo -e " ${red}+${yellow}———${black}———${yellow}———${black}———${red}[ ${green}Secondary~Menu${red} ]${yellow}———${black}———${yellow}———${black}———${red}+\n  ${cyanlite}| ${red}[${white}1${red}] ${yellow}Kali Linux Install ${red}(${yellowlite}Direct${red})        ${cyanlite}|\n     ${black}|\n  ${black}| ${red}[${white}2${red}] ${yellow}Kali Linux Install ${red}(${yellowlite}Manual${red})        ${black}|\n     ${black}|\n  ${cyanlite}| ${red}[${white}3${red}] ${yellow}Script Coming Soon${redlite}..               ${cyanlite}|\n     ${black}|\n  ${black}| ${red}[${white}0${red}] ${yellow}Go Back Menu                       ${black}|\n  ${red}+${black}——${yellow}——${black}——${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}——${red}+${finished}\n"
echo -n -e "[ッ]${whitemix}Write Enter${finished}${black}:${redlite}> ${white}"
read type
case $type in
      1) kalilinux_net
      ;;
      2) kalilinux_manual
      ;;
      3) reset
      kalilinux_tool
      ;;
      0) main_menu
      ;;
      *) echo
         echo -e " ${whitelite}[${redlite}~${whitelite}] ${bluelite}Wrong ${cyanlite}Input ${bluelite}Try ${cyanlite}Again${redlite}.${finished}"
         sleep 3
         kalilinux_tool
      ;;
esac
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function kalilinux_net(){
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}kalilinux installing in termux${finished}"
cd $HOME/T-Advice-installer/kalilinux_install;chmod 700 Install-nethunter.sh;./Install-nethunter.sh
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function kalilinux_manual(){
echo -e ""
echo -e "${red}[${green}INFO${red}] ${cyan}If you want install my backup linuxnethunter ${yellowlite}v2022.2 ${cyan}manual then first download this ${yellowlite}kalifs-arm64-full.tar.xz ${cyan}and move this file to your phone memory download folder, if your downloading and moved complete then type ${green}y ${cyan}and enter or not downloaded then type ${green}n ${cyan}go first download and come back again.👀${finished}"
echo -e ""
echo -e "${yellow}[${red}+${yellow}] ${blue}>> ${greenmix}GIVE STORAGE PERMISSION${finished} ${blue}>>${finished}"
termux-setup-storage
sleep 2
echo -e "${purplelite}Note${white}: ${yellow}This is help you to quickly installing full kalilinux version by default everything have installed, You need 10GB space in the device for installing this kali-linux${yellowlite}.${finished}"
termux-open-url "https://mega.nz/file/AfMVVQiC#Yg1nzp-8SBmO-t3QqvHUPYO79BFYXlR59Sm8hRv--Co"
echo -e "${red}[${green}=${red}] ${white}See Your /storage/download Files\n${black}|-------------------------------------------------|${finished}\n"
cd /data/data/com.termux/files/home/storage/shared/download;ls -A
echo -n -e "\n${black}|-------------------------------------------------|\n\n${white}[㌹] ${bluelite}Do you want to continue ${redlite}(${greenlite}y${whitelite}/${greenlite}n${redlite})${black}:${redlite}> ${white}"
      read type
        if [ $type == 'y' ]
         then
         echo -e "${red}[${yellow}INFO${red}] ${cyanlite}Please wait for 17 minute for installing kalilinux it's also depends your Internet speed, do not minimize or turn off your screen, Go to your phone settings and Screen timeout set 30 minutes, do before 30 minutes touch screen again for not close screen.🐧${finished}"
         echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}Please wait for 1:27 minute..your kalinethunter files remove from${yellowlite}/sdcard/download ${greenlite}to ${yellowlite}termux/home\n${finished}"
         cd /data/data/com.termux/files/home;cp -rf /sdcard/download/kalifs-arm64-full.tar.xz $HOME;cd $HOME/T-Advice-installer/kalilinux_install;chmod 700 Install-nethunter2.sh;./Install-nethunter2.sh
         echo -e ""
      elif [ $type == 'n' ]
        then
        kalilinux_tool
        else
        echo -e " \n${whitelite}[${redlite}~${whitelite}] ${red}Wr${bluelite}ong ${red}In${cyanlite}put ${red}T${bluelite}ry ${red}Ag${cyanlite}ain${redlite}.${finished}"
        sleep 3
        kalilinux_manual
      fi
}

#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function update(){
toilet -f mono9 -F border "Update" | lolcat
echo -e "${yellow}[${red}+${yellow}] ${blue}>> ${greenmix}DOWNLOAD LATEST UPDATE${finished} ${blue}>>\n${redlite}[${green}INFO${redlite}] ${cyan}Hello user, after finished update this script then exit Your termux And re-enter again this tool.👾${finished}\n"
sleep 3
echo -e "${redlite}[${green}✔${redlite}] ${yellow}Please wait Script Updating${redlite}...${finished}"
sleep 5
echo -e "    ${yellowlite}This process is just few seconds${finished}"
sleep 5
rm -rf /data/data/com.termux/files/home/T-Advice-installer;cd $HOME;git clone https://github.com/MrGhostOfficial/T-Advice-installer;cd T-Advice-installer;chmod 7777 T-Advice-installer.sh;cd /data/data/com.termux/files/home;clear;cowsay -f ghostbusters.cow MrGHOST;ls
}

#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function telegram(){
toilet -f mono9 -F border "Telegram" | lolcat
echo -e "${red}[${green}INFO${red}] ${cyan}Hello Friends Welcome to My telegram Group \nif you need Any help about My Script Or You are \nFacing This Script try to any problem Then contact \nOn my telegram group i well try to help you and if \nYou have also github account then dont forget to \nFollow Me on GitHub Thanks for with us ENJOY(🙂)${finished}"
termux-open-url "https://t.me/MrGhostClassic"
sleep 3
backmenu
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function backmenu(){
echo -e "${finished}"
echo -e "${yellowlite}if you dont understand how to Use it then follow\nme telegram group or my youtube channel.\n  ${black}+----------${red}[ ${green}Secondary~Menu${red} ]${black}--------------+\n   | ${red}[${green}1${red}] ${yellow}Main-menu                          ${black}|\n   | ${red}[${white}e${red}] ${yellow}Exit                               ${black}|\n   ${black}+----------------------------------------+${finished}\n"
echo -n -e "[ッ]${whitemix}Write Enter${finished}${black}:${redlite}> ${white}"
read type
case $type in
      1) main_menu
      ;;
      e) logout_menu
      ;;
      *) echo
         echo -e " ${whitelite}[${redlite}~${whitelite}] ${bluelite}Wrong ${cyanlite}Input ${bluelite}Try ${cyanlite}Again${redlite}.${finished}"
         sleep 3
         backmenu
      ;;
esac
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function logout_menu(){
echo -e "${finished}"
clear;reset
toilet -f smmono9 -F gay "MrGhost-Tool"
echo -e "   ${black}+----------------------------------------+\n${black}   |     ${green}Thanks for using This Script Tool  ${black}|\n${black}   |        ${yellow}See you at next time            ${black}|\n   ${black}|----------------------------------------|\n${black}   |           ${cyan}Bye Bye ${white}( ${red}^${cyan}_${red}^${white})${whitelite}/              ${black}|\n   ${black}+----------------------------------------+${finished}"
echo -e "        Friends keep supporting me and \n        Motivating me for making new tools \n        FOR YOU ENJOY..👍🎃\n" | lolcat
sleep 1
exit 0
}

main_menu
