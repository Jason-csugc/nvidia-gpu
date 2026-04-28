wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-wsl-ubuntu.pin
sudo mv cuda-wsl-ubuntu.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/13.2.1/local_installers/cuda-repo-wsl-ubuntu-13-2-local_13.2.1-1_amd64.deb
sudo dpkg -i cuda-repo-wsl-ubuntu-13-2-local_13.2.1-1_amd64.deb
sudo cp /var/cuda-repo-wsl-ubuntu-13-2-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cuda-toolkit-13-2


export LD_LIBRARY_PATH=$(find {{venv name}} -name "*.so*" | grep nvidia | xargs dirname | sort -u | paste -d ":" -s -)
