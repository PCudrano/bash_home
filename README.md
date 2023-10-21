# Home folder
Sets up all the dotfiles in a bash home folder. Includes simple additional functionalities designed for the AIRLab Servers.

## Setup
* Clone the repository in a temporary directory:

  (HTTPS) `git clone --recursive https://github.com/PCudrano/bash_home.git ~/home`
  <br/>
  (GIT) `git clone --recursive git@github.com:PCudrano/bash_home.git ~/home`

* Access the temporary directory: `cd ~/home`

* Move every file to the your home:

  (LINUX) `find . -mindepth 1 -maxdepth 1 -exec mv -t.. -- {} +`
  <br/>
  (Mac) `find . -mindepth 1 -maxdepth 1  -execdir mv '{}' .. \;`
  
* Remove the temporary directory: `cd ; rm -r ~/home`

(Optional)
* Install tmux plugins: open tmux and use `<prefix> + I` to install the plugins.

## Additional commands for AIRLab Servers

- `~/nnv.sh`<br>
Launches `nvidia-smi` with colors indicating GPU utilization and usernames of who is using each GPU.

- `watch -c ~/nnv.sh`<br>
Launches `watch nvidia-smi` with colors indicating GPU utilization and usernames of who is using each GPU.

- `docker-gpu-args <gpu-id>`<br>
Returns a string to be passed to run-docker for using a specified GPU with its associated default cores. For example, `docker-gpu-args 3` returns "3 72-79" on Magrathea (72-79 are the CPU cores associated to GPU 3).<br>
In this way, you can, for example, start a bash shell on GPU 3 using only the associated default CPU cores by running ```run-docker `docker-gpu-args 3` /bin/bash```.<br>
This function is currently set up for Magrathea. Please edit lines `220-221` in `.bashrc` when installing on Elysium or Westworld.
