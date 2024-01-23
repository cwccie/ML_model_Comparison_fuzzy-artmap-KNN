#!/bin/bash
#
### Built for Ubuntu 22.04 Server 
# https://releases.ubuntu.com/22.04.3/ubuntu-22.04.3-live-server-amd64.iso
#
# Set the DEBIAN_FRONTEND environment variable to noninteractive and update package information without prompts
export DEBIAN_FRONTEND=noninteractive
sudo apt update -y

####################################################################################################
####################################################################################################
### Optional Install Components
###
# Install net-tools for ifconfig functionality without prompts and display output
# Remove the comment (#) from the following line if you would like to install net-tools
# sudo apt install -y net-tools
#
# Install Samba without prompts, display output, Add share lines to the smb.conf file
# Remove the Comment (#) from the following 7 lines to install Samba and establish a guest access share. Be aware of security risks before doing this.
# sudo apt install -y samba
# echo "[ml_model_comparison_share]" | sudo tee -a /etc/samba/smb.conf
# echo "path = $PWD" | sudo tee -a /etc/samba/smb.conf
# echo "read only = no" | sudo tee -a /etc/samba/smb.conf
# echo "guest only = yes" | sudo tee -a /etc/samba/smb.conf
# echo "guest ok = yes" | sudo tee -a /etc/samba/smb.conf
# sudo systemctl restart smbd
#
####################################################################################################
####################################################################################################

# Clone the ML Model Comparison repository
sudo git clone https://github.com/cwccie/ML_model_Comparison_fuzzy-artmap-KNN.git

####################################################################################################
####################################################################################################

# Install Python 3.10 and venv without prompts
sudo apt install -y python3.10 python3.10-venv

# Check Python version
python3.10 --version

# Install pip for Python 3 without prompts and display output
sudo apt install -y python3-pip

# Create a virtual environment in the .venv directory and activate it
sudo python3.10 -m venv .venv
sudo source .venv/bin/activate

# Install requirements from requirements.txt without prompts
sudo pip install numpy pandas matplotlib scikit-learn torch ucimlrepo

####################################################################################################
####################################################################################################
### Optional Permission Change 
###
# If needed, remove the comment (#) below, Change permissions on the ML Model Comparison directory without prompts
# sudo chmod -R 777 ML_model_Comparison_fuzzy-artmap-KNN

####################################################################################################
####################################################################################################

# Run the Python script
sudo python3.10 ML_model_Comparison_fuzzy-artmap-KNN/ml_model_comparison_knearest_fam.py

####################################################################################################
