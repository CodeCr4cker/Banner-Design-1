#!/bin/bash

remove_TBanner() {
cd $HOME
if [[ -e T-Banner ]]
then
echo -e "\e[1;32m .. Removing T-Banner ..\e[0m"
rm -rvf T-Banner > /dev/null
fi
}
Old_Banner() {
cat original_bashrc.txt > /data/data/com.termux/files/usr/etc/bash.bashrc


cat original_motd.txt > /data/data/com.termux/files/usr/etc/motd



}
Old_Banner
remove_TBanner

if ! [ -e T-Banner ]; then
        echo -e "\e[1;32m ****File Deleted Successfully****\e[0m"
else                                                          echo -e "\e[1;31m Something Went Wrong\e[0m"

fi


