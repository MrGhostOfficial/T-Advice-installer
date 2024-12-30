#!/data/data/com.termux/files/usr/bin/bash -e
#MrGhostOfficial[NetHunter]
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
VERSION=2020011601
BASE_URL=https://kali.download/nethunter-images/current/rootfs
USERNAME=kali



function unsupported_arch() {
    printf "${red}"
    echo "[*] Unsupported Architecture\n\n"
    printf "${finished}"
    exit
}

function ask() {
    # MrGhost/ask
    while true; do

        if [ "${2:-}" = "Y" ]; then
            prompt="Y/n"
            default=Y
        elif [ "${2:-}" = "N" ]; then
            prompt="y/N"
            default=N
        else
            prompt="y/n"
            default=
        fi

        # Ask the question
        printf "\n${redlite}[${white}?${redlite}] ${cyanlite}"
        read -p "$1 [$prompt] " REPLY

        # Default?
        if [ -z "$REPLY" ]; then
            REPLY=$default
        fi

        printf "${finished}"

        # Check if the reply is valid
        case "$REPLY" in
            Y*|y*) return 0 ;;
            N*|n*) return 1 ;;
        esac
    done
}

function get_arch() {
    printf "${red}[${white}*${red}] ${blue}Checking device architecture${redlite}...${finished}"
    case $(getprop ro.product.cpu.abi) in
        arm64-v8a)
            SYS_ARCH=arm64
            ;;
        armeabi|armeabi-v7a)
            SYS_ARCH=armhf
            ;;
        *)
            unsupported_arch
            ;;
    esac
}

function set_strings() {
    echo \
    && echo "" 
    ####
    if [[ ${SYS_ARCH} == "arm64" ]];
    then
        echo -e "${redlite}[${white}1${redlite}] ${yellow}NetHunter ARM64 ${redlite}(${green}full${redlite})${finished}"
        echo -e "${redlite}[${white}2${redlite}] ${yellow}NetHunter ARM64 ${redlite}(${green}minimal${redlite})${finished}"
        echo -e "${redlite}[${white}3${redlite}] ${yellow}NetHunter ARM64 ${redlite}(${green}nano${redlite})${finished}\n"
        read -p "Enter the image you want to install: " wimg
        if (( $wimg == "1" ));
        then
        cp -rf /data/data/com.termux/files/home/T-Advice-installer/kalilinux_install/kalifs-arm64-full.sha512sum $HOME
            wimg="full"
        elif (( $wimg == "2" ));
        then
        cp -rf /data/data/com.termux/files/home/T-Advice-installer/kalilinux_install/kalifs-arm64-minimal.sha512sum $HOME
            wimg="minimal"
        elif (( $wimg == "3" ));
        then
        cp -rf /data/data/com.termux/files/home/T-Advice-installer/kalilinux_install/kalifs-arm64-nano.sha512sum $HOME
            wimg="nano"
        else
            wimg="full"
        fi
    elif [[ ${SYS_ARCH} == "armhf" ]];
    then
        echo -e "${redlite}[${white}1${redlite}] ${yellow}NetHunter ARMhf ${redlite}(${green}minimal${redlite})${finished}"
        echo -e "${redlite}[${white}2${redlite}] ${yellow}NetHunter ARMhf ${redlite}(${green}nano${redlite})${finished}\n"
        read -p "Enter the image you want to install: " wimg
        if (( $wimg == "1" ));
        then
            wimg="minimal"
        elif (( $wimg == "2" ));
        then
            wimg="nano"
        else
            wimg="minimal"
        fi
        else
        wimg="full"
    fi
    ####


    CHROOT=kali-${SYS_ARCH}
    IMAGE_NAME=kalifs-${SYS_ARCH}-${wimg}.tar.xz
    SHA_NAME=kalifs-${SYS_ARCH}-${wimg}.sha512sum
}    

function prepare_fs() {
    unset KEEP_CHROOT
    if [ -d ${CHROOT} ]; then
        if ask "Existing rootfs directory found. Delete and create a new one?" "N"; then
            rm -rf ${CHROOT}
        else
            KEEP_CHROOT=1
        fi
    fi
} 

function cleanup() {
    if [ -f ${IMAGE_NAME} ]; then
        if ask "Delete downloaded rootfs file?" "N"; then
	    if [ -f ${IMAGE_NAME} ]; then
                rm -f ${IMAGE_NAME}
	    fi
	    if [ -f ${SHA_NAME} ]; then
                rm -f ${SHA_NAME}
	    fi
        fi
    fi
} 

function check_dependencies() {
    printf "\n${red}[${white}*${red}] ${blue}Checking package dependencies${redlite}...${finished}\n"
    ## Workaround for termux-app issue #1283 (https://github.com/termux/termux-app/issues/1283)
    ##apt update -y &> /dev/null
    pkg install neofetch -y;dpkg --configure -a;apt-get update -y &> /dev/null || apt-get -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confnew" dist-upgrade -y &> /dev/null

    for i in proot tar axel; do
        if [ -e $PREFIX/bin/$i ]; then
            echo "  $i is OK"
        else
            printf "Installing ${i}...\n"
            apt install -y $i || {
                printf "${red}ERROR: Failed to install packages.\n Exiting.\n${finished}"
	        exit
            }
        fi
    done
    apt upgrade -y
}


function get_url() {
    ROOTFS_URL="${BASE_URL}/${IMAGE_NAME}"
    SHA_URL="${BASE_URL}/${SHA_NAME}"
}

function get_rootfs() {
    unset KEEP_IMAGE
    if [ -f ${IMAGE_NAME} ]; then
        if ask "Existing image file found. Delete and download a new one?" "N"; then
            rm -f ${IMAGE_NAME}
        else
            KEEP_IMAGE=1
            return
        fi
    fi
    printf "${red}[${white}*${red}] ${blue}Downloading rootfs${redlite}...${finished}\n\n"
    get_url
    wget ${EXTRA_ARGS} --continue "${ROOTFS_URL}"
}

function get_sha() {
    if [ -z $KEEP_IMAGE ]; then
        printf "\n${red}[${white}*${red}] ${blue}Getting SHA ${redlite}... ${finished}\n\n"
        get_url
        if [ -f ${SHA_NAME} ]; then
            rm -f ${SHA_NAME}
        fi
        wget ${EXTRA_ARGS} --continue "${SHA_URL}"
    fi
}

function verify_sha() {
    if [ -z $KEEP_IMAGE ]; then
        printf "\n${red}[${white}*${red}] ${blue}Verifying integrity of rootfs${redlite}...${finished}\n\n"
        sha512sum -c $SHA_NAME || {
            printf "${red} Rootfs corrupted. Please run this installer again or download the file manually\n${finished}"
            exit 1
        }
    fi
}

function extract_rootfs() {
    if [ -z $KEEP_CHROOT ]; then
        printf "\n${red}[${white}*${red}] ${blue}Extracting using rootfs archive${redlite}...${finished}\n\n"
        proot --link2symlink tar -xf $IMAGE_NAME 2> /dev/null || :
    else        
        printf "${yellow}[!] Using existing rootfs directory${finished}\n"
    fi
}


function create_launcher() {
    NH_LAUNCHER=${PREFIX}/bin/nethunter
    NH_SHORTCUT=${PREFIX}/bin/nh
    cat > $NH_LAUNCHER <<- EOF
#!/data/data/com.termux/files/usr/bin/bash -e
cd \${HOME}
## termux-exec sets LD_PRELOAD so let's unset it before continuing
unset LD_PRELOAD
## Workaround for Libreoffice, also needs to bind a fake /proc/version
if [ ! -f $CHROOT/root/.version ]; then
    touch $CHROOT/root/.version
fi

## Default user is "kali"
user="$USERNAME"
home="/home/\$user"
start="sudo -u kali /bin/bash"

## NH can be launched as root with the "-r" cmd attribute
## Also check if user kali exists, if not start as root
if grep -q "kali" ${CHROOT}/etc/passwd; then
    KALIUSR="1";
else
    KALIUSR="0";
fi
if [[ \$KALIUSR == "0" || ("\$#" != "0" && ("\$1" == "-r" || "\$1" == "-R")) ]];then
    user="root"
    home="/\$user"
    start="/bin/bash --login"
    if [[ "\$#" != "0" && ("\$1" == "-r" || "\$1" == "-R") ]];then
        shift
    fi
fi

cmdline="proot \\
        --link2symlink \\
        -0 \\
        -r $CHROOT \\
        -b /dev \\
        -b /proc \\
        -b /sdcard \\
        -b $CHROOT\$home:/dev/shm \\
        -w \$home \\
           /usr/bin/env -i \\
           HOME=\$home \\
           PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin \\
           TERM=\$TERM \\
           LANG=C.UTF-8 \\
           \$start"

cmd="\$@"
if [ "\$#" == "0" ];then
    exec \$cmdline
else
    \$cmdline -c "\$cmd"
fi
EOF

    chmod 700 $NH_LAUNCHER
    if [ -L ${NH_SHORTCUT} ]; then
        rm -f ${NH_SHORTCUT}
    fi
    if [ ! -f ${NH_SHORTCUT} ]; then
        ln -s ${NH_LAUNCHER} ${NH_SHORTCUT} >/dev/null
    fi
   
}

function create_kex_launcher() {
    KEX_LAUNCHER=${CHROOT}/usr/bin/kex
    cat > $KEX_LAUNCHER <<- EOF
#!/bin/bash

function start-kex() {
    if [ ! -f ~/.vnc/passwd ]; then
        passwd-kex
    fi
    USR=\$(whoami)
    if [ \$USR == "root" ]; then
        SCREEN=":2"
    else
        SCREEN=":1"
    fi 
    export HOME=\${HOME}; export USER=\${USR}; LD_PRELOAD=/usr/lib/aarch64-linux-gnu/libgcc_s.so.1 nohup vncserver \$SCREEN >/dev/null 2>&1 </dev/null
    starting_kex=1
    return 0
}

function stop-kex() {
    vncserver -kill :1 | sed s/"Xtigervnc"/"NetHunter KeX"/
    vncserver -kill :2 | sed s/"Xtigervnc"/"NetHunter KeX"/
    return $?
}

function passwd-kex() {
    vncpasswd
    return $?
}

function status-kex() {
    sessions=\$(vncserver -list | sed s/"TigerVNC"/"NetHunter KeX"/)
    if [[ \$sessions == *"590"* ]]; then
        printf "\n\${sessions}\n"
        printf "\nYou can use the KeX client to connect to any of these displays.\n\n"
    else
        if [ ! -z \$starting_kex ]; then
            printf '\nError starting the KeX server.\nPlease try "nethunter kex kill" or restart your termux session and try again.\n\n'
        fi
    fi
    return 0
}

function kill-kex() {
    pkill Xtigervnc
    return \$?
}

case \$1 in
    start)
        start-kex
        ;;
    stop)
        stop-kex
        ;;
    status)
        status-kex
        ;;
    passwd)
        passwd-kex
        ;;
    kill)
        kill-kex
        ;;
    *)
        stop-kex
        start-kex
        status-kex
        ;;
esac
EOF

    chmod 700 $KEX_LAUNCHER
}

function fix_profile_bash() {
    ## Prevent attempt to create links in read only filesystem
    if [ -f ${CHROOT}/root/.bash_profile ]; then
        sed -i '/if/,/fi/d' "${CHROOT}/root/.bash_profile"
    fi
}

function fix_sudo() {
    ## fix sudo & su on start
    chmod +s $CHROOT/usr/bin/sudo
    chmod +s $CHROOT/usr/bin/su
	echo "kali    ALL=(ALL:ALL) ALL" > $CHROOT/etc/sudoers.d/kali

    # https://bugzilla.redhat.com/show_bug.cgi?id=1773148
    echo "Set disable_coredump false" > $CHROOT/etc/sudo.conf
}

function fix_uid() {
    ## Change kali uid and gid to match that of the termux user
    USRID=$(id -u)
    GRPID=$(id -g)
    nh -r usermod -u $USRID kali 2>/dev/null
    nh -r groupmod -g $GRPID kali 2>/dev/null
}

function print_banner() {
clear;reset
printf "${red}##################################################\n${red}##                                              ##\n${red}##  88      a8P         db        88        88  ##\n${red}##  88    .88'         d88b       88        88  ##\n${red}##  88   88'          d8''8b      88        88  ##\n${red}##  88 d88           d8'  '8b     88        88  ##\n${red}##  8888'88.        d8YaaaaY8b    88        88  ##\n${red}##  88P   Y8b      d8''''''''8b   88        88  ##\n${red}##  88     '88.   d8'        '8b  88        88  ##\n${red}##  88       Y8b d8'          '8b 888888888 88  ##\n${red}##                                              ##\n${red}####  ############# NetHunter ####################${finished}\n\n"
}

##################################
##              Main            ##
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
EXTRA_ARGS=""
if [[ ! -z $1 ]]; then
    EXTRA_ARGS=$1
    if [[ $EXTRA_ARGS != "--no-check-certificate" ]]; then
        EXTRA_ARGS=""
    fi
fi

cd $HOME
print_banner
get_arch
set_strings
prepare_fs
check_dependencies
get_rootfs
get_sha
verify_sha
extract_rootfs
create_launcher
cleanup

printf "\n${redlite}[${white}*${redlite}] ${blue}Configuring NetHunter for Termux${redlite}...\n${finished}"
fix_profile_bash
fix_sudo
create_kex_launcher
fix_uid

print_banner
printf "${red}[${green}=${red}] ${cyan}KaliNetHunter in Termux installed successfully${finished}\n\n"
printf "${red}[${yellow}=${red}] ${cyan}Hello user, take new season in termux terminal enter ${white}nh -r ${cyan} and paste this to setup your kaliLinux Root\n${white}sudo apt update;sudo apt install neofetch -y${finished}\n\n"
printf "${red}[${yellow}+${red}] ${yellow}To start Kali NetHunter, type:\n${red}[${yellow}+${red}] ${green}nh                    ${red}# ${yellow}Shortcut for nethunter${finished}\n${red}[${yellow}+${red}] ${green}nethunter             ${red}# ${yellow}To start NetHunter CLI\n${red}[${yellow}+${red}] ${green}nethunter kex passwd  ${red}# ${yellow}To set the KeX password\n${red}[${yellow}+${red}] ${green}nethunter kex &       ${red}# ${yellow}To start NetHunter GUI\n${red}[${yellow}+${red}] ${green}nethunter kex stop    ${red}# ${yellow}To stop NetHunter GUI\n${red}[${yellow}+${red}] ${green}nh -r                 ${red}# ${yellow}To run NetHunter as root\n"
rm -rf /data/data/com.termux/files/home/kalifs-arm64-full.sha512sum;rm -rf /data/data/com.termux/files/home/kalifs-arm64-full.tar.xz;rm -rf /data/data/com.termux/files/home/kalifs-arm64-minimal.sha512sum;rm -rf /data/data/com.termux/files/home/kalifs-arm64-minimal.tar.xz;rm -rf /data/data/com.termux/files/home/kalifs-arm64-nano.sha512sum;rm -rf /data/data/com.termux/files/home/kalifs-arm64-nano.tar.xz;cd /data/data/com.termux/files/home/kali-arm64/root;echo -e "" > .hushlogin;chmod +x .hushlogin;cp -rf /data/data/com.termux/files/home/T-Advice-installer/bash.bashrc $PREFIX/etc;cd $HOME