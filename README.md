# bash-virus
"Small," spreadable virus created in bash script(s)

# Warnings
DO NOT RUN THIS ON YOUR MAIN PRODUCTION COMPUTER

# Instructions
To run virus, mark all *.sh files in directory as executable, with something similar to `chmod +x *.sh`, and run `virus.sh`.

To run docker container, install Docker and set up a VM with:
```
sudo docker run -it --entrypoint "/bin/bash" ubuntu:latest
#In container
apt update && apt install sudo
```
(Note: may work on non Ubuntu distros, however they are untested)

After doing this, copy the virus files to the docker container in another terminal tab/window, with commands similar to:
```
sudo docker ps --format "{{.Names}}"
sudo docker cp [path_to_virus_folder] [name_from_previous_command]:/
```

# Effects (may be out of date)
After running `virus.sh`, the file gets your root password, stores the pass to file `supass.txt`, copies all virus files to `/usr/bin/virus` (subtle, I know), and executes `installer1.sh`.
When running `installer1.sh`, the file copies `installer2.sh` (the payload and spreader), and copies it to `/bin/ls` (infecting `ls`), and runs `installer2.sh`.
`installer2.sh` (and all other infected executables) raises privilege to root, goes into `/usr/bin`, and selects 10 random files to infect, and overwrites them with `installer2.sh` (the desired payload and spreader), then exits

# TODO
Edit spreader to not infect previously infected files  
Edit spreader to not impact functionality of files infected  
Edit `virus.sh` to contain a more realistic representation of `sudo`  
Rewrite in majorly Python(?)
