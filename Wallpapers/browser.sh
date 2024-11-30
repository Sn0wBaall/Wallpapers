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

clear
echo -e "${purpleColour}
 ░▒▓███████▓▒░▒▓███████▓▒░░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓█▓▒░      ░▒▓█▓▒░        
░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░        
░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░  ${endColour}${redColour}[ By Sn0wBaall ]${endColour}${purpleColour}
 ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓█▓▒░      ░▒▓█▓▒░        
       ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░        
       ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░        
░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░░▒▓█████████████▓▒░ ░▒▓█████████████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓████████▓▒░ 
                                                                                                                        ${endColour}"
                                                                                                                        

function ctrl_c(){
  tput cnorm && exit 1
}

trap ctrl_c INT
sleep 1

route="$(pwd)"
folder="$route/WP"

for file in "$folder"/*.jpg; do
    if [ -f "$file" ]; then
        let jpg_count+=1
    fi
  done

if ! type kitty &> /dev/null; then
  echo -ne "\n${redColour}[!]${endColour}${grayColour} You don't have kitty, let's install it!!!${endColour}\n"
  echo -ne "\n${yellowColour}[!]${endColour}${grayColour} Please enter the root password${endColour}${turquoiseColour} -->${endColour} "
  read -s passwd
  echo ""
  echo -e "${yellowColour}[!]${endColour}${grayColour} Instaling kitty${endColour}"
  echo "$passwd" | sudo -S apt install kitty -y >/dev/null 2>/dev/null
  echo -e "${greenColour}[+]${endColour}${grayColour} The kitty is already installed${endColour}"
else
  echo -e "\n${greenColour}[+]${endColour}${grayColour} You have${endColour}${BpurpleColour} $jpg_count${endColour}${grayColour} wallpapers${endColour}"
  while true; do

  echo -ne "\n${yellowColour}[!]${endColour}${grayColour} Do you want to see all wallpapers, a specific wallpaper or specify a range?${endColour} ${purpleColour}[A]ll${endColour} ${blueColour}[S]pecific${endColour} ${greenColour}[R]ange${endcolour} ${redColour}[e]xit${endColour}${turquoiseColour} -->${endColour} " && read option 

  if [ "$option" == "e" ]; then
    exit 1

  elif [ "$option" == "S" ]; then
    while true; do 
      echo -ne "\n${yellowColour}[!]${endColour}${grayColour} Which wallpaper do you want to see?${endColour}${purpleColour} [ 01-$jpg_count ]${endColour}${turquoiseColour} -->${endColour} " && read num
      num=$(printf %02d "$num")
      kitten icat $folder/wall-$num.jpg
   done


  elif [ "$option" == "A" ];then
    echo -e "\n${yellowColour}[!]${endColour}${grayColour} Showing all wallpapers${endColour}"
     for file in $(ls -v $folder/wall-*.jpg); do
       tput civis
      wallpaper=$(echo -e $file | sed 's/\// /g' | awk '{print $NF}')
      echo -e "${greenColour}[+]${endColour}${grayColour} Showing the wallpaper${endColour}${turquoiseColour} -->${endColour}${purpleColour} $wallpaper${endColour}"
      sleep 0.5
      kitten icat "$file"
      tput cnorm
    done

  elif [ "$option" == "R" ]; then
    echo -ne "\n${yellowColour}[!]${endColour}${grayColour} Specify a range${endColour}${purpleColour} [ 01-$jpg_count ]${endColour}${turquoiseColour} -->${endColour} " && read read1 read2 
    for ((i = $read1; i <= $read2; i++)); do
      tput civis
      num=$(echo $i | awk '{printf "%02d", $1}')
      file="$folder/wall-$num.jpg"
      wallpaper=$(echo -e $file | sed 's/\// /g' | awk '{print $NF}')
      echo -e "\n${greenColour}[+]${endColour}${grayColour} Showing the wallpaper${endColour}${turquoiseColour} -->${endColour}${purpleColour} $wallpaper${endColour}"
      sleep 0.5
      kitten icat $file
      tput cnorm
    done
  fi
done
fi