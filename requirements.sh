#!/bin/bash
echo "installing figlet"

apt-get install figlet -y > /dev/null

echo "installing cowsay"

apt-get install cowsay -y > /dev/null
echo "installing ruby"

apt-get install ruby -y > /dev/null

echo "installing lolcat"

gem install lolcat  > /dev/null

if [[ $(command -v figlet) && $(command -v cowsay) && $(command -v ruby) && $(command -v lolcat) ]]; then
                echo -e "\e[1;32m All packages installed successfully \e[0m"

else
        echo -e "\e[1;31m Something Went Wrong !!! Try Again \e[0m"

fi


