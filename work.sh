#!/bin/bash      
cols=$(tput cols)
rows=$(tput lines)
sati=${1-1}
minuti=${2-0}
sec=${3-0}
declare -i x=$rows y=2 z=x/y
tput clear
while [ $sati -ge 0 ]
do
	while [ $minuti -ge -0 ]
	do	
		
		while [ $sec -ge 0 ]
		do 	
			tput clear
			tput setaf 15
			tput cup $z 0
			figlet -w $(( $cols + 10)) -f ANSI -c $sati:$minuti:$sec 	
		       	tput setaf 154	
			tput cup $(($z + 6 )) $(( $cols/3+3))
			echo "never stop playing and asking questions"
			sec=$(( $sec - 1))
			sleep 1
		done
		sec=59
		minuti=$(( $minuti - 1 ))
	done
	minuti=59
	sati=$(( $sati - 1 ))
done




