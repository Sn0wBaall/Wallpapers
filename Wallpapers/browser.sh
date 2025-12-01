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

route="$(pwd)"
folder="$route/WP"
jpg_count=0

function ctrl_c(){
  echo -e "\n\n${BredColour}[!] Exit...${endColour}"
  tput cnorm && exit 1
}

trap ctrl_c SIGINT


function jpgCount(){
  for file in "$folder"/*.jpg;do
    if  [ -f "$file" ];then
      let jpg_count+=1
    fi
  done

  echo -e "$jpg_count"
}

function banner(){
  echo -e "${purpleColour}"
  echo -e " ░▒▓███████▓▒░▒▓███████▓▒░░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓█▓▒░      ░▒▓█▓▒░   "     
  echo -e "░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░   "      
  echo -e "░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░  ${endColour}${BredColour}[ By Sn0wBaall ]${endColour}"
  echo -e "${purpleColour} ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓█▓▒░      ░▒▓█▓▒░   "     
  echo -e "       ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░        "
  echo -e "       ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░        "
  echo -e "░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░░▒▓█████████████▓▒░ ░▒▓█████████████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓████████▓▒░ "
  echo -e "${endColour}\n"
                                                                                                                        
}

function menu(){
  while true;do
    clear
    banner
    echo -e "${BgreenColour}[+]${endColour}${grayColour} You have ${endColour}${BpurpleColour}$(jpgCount)${endColour}${grayColour} wallpapers${endColour}\n"
    echo -e "${BgreenColour}[~]${endColour}${grayColour} What do you want to see?${endColour}"
    echo -e "\t${BpurpleColour}[A]${endColour}${purpleColour}ll${endColour}${grayColour} wallpapers${endColour}"
    echo -e "\t${BblueColour}[S]${endColour}${blueColour}pecific${endColour}${grayColour} wallpaper${endColour}"
    echo -e "\t${BgreenColour}[R]${endColour}${greenColour}ange${endColour}${grayColour} of wallpapers${endColour}"
    echo -e "\t${BredColour}[e]${endColour}${redColour}xit${endColour}\n" 
    echo -ne "${BgrayColour}[${endColour}${yellowColour} SN0WWALL${endColour}${BgrayColour} ]${endColour}${grayColour}:${endColour}${BgrayColour}\$${endColour} "
    read -r option
    case "$option" in
      [A]) all;;
      [S]) specific;;
      [R]) range;;
      [e]) exit 1;;
    esac
  done
}

function all(){
  echo -e "${BgreenColour}[+]${endColour}${grayColour} Showing all wallpapers${endColour}"
  sleep 1
  tput civis
  for file in $(ls -v $folder/wall-*.jpg);do
    wallpaper=$(echo -e $file | sed 's/\// /g' | awk '{print $NF}')
    echo -e "${BgrayColour}[${endColour}${yellowColour} Showing${endColour}${BpurpleColour} $wallpaper${endColour}${BgrayColour} ]${endColour}"
    sleep 0.5
    kitten icat "$file"
  done
  tput cnorm
}

function specific(){
  while true;do
    echo -e "${greenColour}┌${endColour}${BgrayColour}[${endColour}${yellowColour} type${endColour}${ByellowColour} \"M\"${endColour}${yellowColour} to return to the menu${endColour}${BgrayColour} ]${endColour}"
    echo -ne "${greenColour}└${endColour}${BgrayColour}[${endColour}${BpurpleColour} 01-$(jpgCount)${endColour}${BgrayColour} ]${endColour}${grayColour}:${endColour}${BgrayColour}\$${endColour} " && read -r num
    if [ "$num" == "M" ];then
      menu
    fi
      num=$(printf %02d "$num")
      kitten icat $folder/wall-$num.jpg 2>/dev/null
  done
}

function range(){
  while true;do
    echo -e "${greenColour}┌${endColour}${BgrayColour}[${endColour}${yellowColour} type${endColour}${ByellowColour} \"M\"${endColour}${yellowColour} to return to the menu${endColour}${BgrayColour} ]${endColour}"
    echo -ne "${greenColour}└${endColour}${BgrayColour}[${endColour}${yellowColour} Specify a range${endColour}${BpurpleColour} 0-$(jpgCount)${endColour}${BgrayColour} ]${endColour}${grayColour}:${endColour}${BgrayColour}\$${endColour} " && read num1 num2
    if [ "$num1" == "M" ];then
      menu
    fi 
    for ((i = $num1; i <= $num2; i++));do
      tput civis
      num=$(echo $i | awk '{printf "%02d", $1}')
      file="$folder/wall-$num.jpg"
      wallpaper=$(echo -e $file | sed 's/\// /g' | awk '{print $NF}')
      echo -e "${BgrayColour}[${endColour}${yellowColour} Showing${endColour}${BpurpleColour} $wallpaper${endColour}${BgrayColour} ]${endColour}"
      sleep 0.5
      kitty icat $file
      tput cnorm
    done
  done
}

menu
