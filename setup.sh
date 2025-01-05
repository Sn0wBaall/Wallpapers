#!/bin/bash

## COLOURS

greenColour="\e[0;32m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m"
blueColour="\e[0;34m"
yellowColour="\e[0;33m"
purpleColour="\e[0;35m"
turquoiseColour="\e[0;36m"
grayColour="\e[0;37m"

## BOLD COLOURS

BgreenColour="\e[1;32m"
BendColour="\033[0m\e[0m"
BredColour="\e[1;31m"
BblueColour="\e[1;34m"
ByellowColour="\e[1;33m"
BpurpleColour="\e[1;35m"
BturquoiseColour="\e[1;36m"
BgrayColour="\e[1;37m"

route=$(pwd)
user=$(whoami)

if [ ! -d /home/$user/Desktop ];then
  echo -e "\n${BredColour}[!]${endColour}${grayColour} You dont have a Desktop directory${endColour}"
  sleep 1
  echo -e "${ByellowColour}[+]${endColour}${grayColour} Creating a Desktop directory${endColour}"
  mkdir /home/$user/Desktop
  sleep 0.5
  echo -e "${BgreenColour}[+]${endColour}${grayColour} Desktop directory has been created${endColour}"
  echo -e "\n${ByellowColour}[!]${endColour}${grayColour} Please execute${endColour}${BpurpleColour} ./setup.sh${endColour}${grayColour} again${endColour}"
else
  if [ $(which kitty) ];then
cp -r $route/Wallpapers /home/$user/Desktop/
echo -e "\n${BgreenColour}[+]${endColour}${grayColour} All wallpapers are in${endColour}${BpurpleColour} /home/$user/Desktop/Wallpapers${endColour}"
  else
    clear
    echo -e "\n${ByellowColour}[!]${endColour}${grayColour} You don't have kitty${endColour}\n"
    echo -ne "${BgreenColour}[+]${endColour}${grayColour} Please enter your root password to install it${endColour}${turquoiseColour} --> ${endColour}"
    read -s passwd
    echo -e ""
    echo -e "${ByellowColour}[!]${endColour}${grayColour} installing kitty${endColour}\n"
    echo "$passwd" | sudo -S apt install kitty -y >/dev/null 2>/dev/null
    echo -e "${BgreenColour}[+]${endColour}${grayColour} Kitty is already installed!!!${endColour}"
    sleep 2
    ./setup.sh
  fi
fi
