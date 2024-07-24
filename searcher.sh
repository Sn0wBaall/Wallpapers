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

echo -e "${purpleColour}
 ░▒▓███████▓▒░▒▓███████▓▒░░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓█▓▒░      ░▒▓█▓▒░        
░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░        
░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░  ${endColour}${redColour}[ Made by sn0w ]${endColour}${purpleColour}
 ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓█▓▒░      ░▒▓█▓▒░        
       ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░        
       ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░        
░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░░▒▓█████████████▓▒░ ░▒▓█████████████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓████████▓▒░ 
                                                                                                                        ${endColour}"
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                        



function ctrl_c(){
  echo -e "\n\n${redColour}[!] Saliendo!!!${endColour}\n"
  tput cnorm && exit 1
}

trap ctrl_c INT
sleep 1

ruta="$(pwd)"
folder="$ruta"

for file in "$folder"/*.jpg; do
    if [ -f "$file" ]; then
        let jpg_count+=1
    fi
  done

if ! type kitty &> /dev/null; then
  echo -ne "\n${redColour}[!]${endColour}${grayColour} No tienes kitty instalada, vamos a instalarla!!!${endColour}\n"
  echo -ne "\n${yellowColour}[!]${endColour}${grayColour} Introduzca su contraseña de root${endColour}${turquoiseColour} -->${endColour} "
  read -s passwd
  echo ""
  echo -e "${yellowColour}[!]${endColour}${grayColour} Instalando kitty${endColour}"
  echo "$passwd" | sudo -S apt install kitty -y >/dev/null 2>/dev/null
  echo -e "${greenColour}[+]${endColour}${grayColour} Listo kitty instalada${endColour}"
else
  echo -e "\n${greenColour}[+]${endColour}${grayColour} La cantidad de fondos es${endColour}${turquoiseColour} -->${endColour}${BpurpleColour} $jpg_count${endColour}"
  while true; do
  #echo -e "\n${greenColour}[+]${endColour}${grayColour} La cantidad de fondos es${endColour}${turquoiseColour} -->${endColour}${prupleColour} $jpg_count${endColour}"

  echo -ne "\n${yellowColour}[!]${endColour}${grayColour} Quieres ver todos los fondos, quieres ver uno en especifico o especificar un rango?${endColour} ${purpleColour}[A]ll${endColour} ${blueColour}[S]pecific${endColour} ${greenColour}[R]ange${endcolour} ${redColour}[e]xit${endColour}${turquoiseColour} -->${endColour} " && read option 

  if [ "$option" == "e" ]; then
    echo -e "\n${redColour}[!] Saliendo!!!!${endColour}\n"
    exit 1

  elif [ "$option" == "S" ]; then
    while true; do 
      echo -ne "\n${yellowColour}[!]${endColour}${grayColour} Que fondo quieres ver?${endColour}${purpleColour} [ 01-$jpg_count ]${endColour}${turquoiseColour} -->${endColour} " && read num
      num=$(printf %02d "$num")
      kitten icat wall-$num.jpg
   done


  elif [ "$option" == "A" ];then 
    echo -e "\n${yellowColour}[+]${endColour}${grayColour} Mostrando todos los fondos${endColour}"
     for file in $(ls -v wall-*.jpg); do
       tput civis
      echo -e "${greenColour}[+]${endColour}${grayColour} Mostrando fondo${endColour}${purpleColour} $file${endColour}"
      sleep 0.5
      kitten icat "$file"
      tput cnorm
    done

  elif [ "$option" == "R" ]; then
    echo -ne "\n${yellowColour}[!]${endColour}${grayColour} Especifica el rango${endColour}${purpleColour} [ 01-$jpg_count ]${endColour}${turquoiseColour} -->${endColour} " && read read1 read2 
    for ((i = $read1; i <= $read2; i++)); do
      tput civis
      num=$(echo $i | awk '{printf "%02d", $1}')
      file="wall-$num.jpg"
      echo -e "\n${greenColour}[+]${endColour}${grayColour} Mostrando el fondo${endColour}${purpleColour} $file${endColour}"
      sleep 0.5
      kitten icat $file
      tput cnorm
    done
  fi
done
fi
