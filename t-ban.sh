#!/bin/bash

if 	[[ -e original_bashrc.txt ]] && [[ -e original_motd.txt ]]
then
         cat original_bashrc.txt > /data/data/com.termux/files/usr/etc/bash.bashrc

	 cat original_motd.txt > /data/data/com.termux/files/usr/etc/motd


figlet "T-Banner" | lolcat

echo 
echo

echo -e "\e[1;32m Enter your Cowsay text : \e[0m"
read varcowsay


echo $varcowsay > cowsay.txt
echo
echo -e "\e[1;32m Enter Your Banner Text :\e[0m"


read varbanner



echo "figlet '$varbanner' | lolcat" > banner.txt
echo





echo "" > /data/data/com.termux/files/usr/etc/motd



cat "random.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc

#echo  "cowsay -f $RAND_STR "$varcowsay" | lolcat"
 

cat "banner.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc

echo -e "\e[1;32m***** Your Banner is Ready***** \e[0m"

echo""

else

cat /data/data/com.termux/files/usr/etc/bash.bashrc > /data/data/com.termux/files/home/T-Banner/original_bashrc.txt

cat /data/data/com.termux/files/usr/etc/motd > /data/data/com.termux/files/home/T-Banner/original_motd.txt

bash t-ban.sh


fi

