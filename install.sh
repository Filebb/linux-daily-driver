sudo apt install gnome-tweaks
sudo apt install gnome-weather
sudo apt install neofetch
sudo apt install htop

# GNOME extensions
sudo apt install gnome-shell-extension-manager

# Logitech devices (looks it needs reboot)
sudo add-apt-repository ppa:solaar-unifying/stable
sudo apt update
sudo apt install solaar

# to install deb packages (RStudio and Quarto)
sudo apt install gdebi-core

# packages needed to install R packages
sudo apt install build-essential
sudo apt install libfontconfig1-dev
sudo apt install libcurl4-openssl-dev
sudo apt install libxml2-dev
sudo apt install libssl-dev
sudo apt install zlib1g-dev
sudo apt install libharfbuzz-dev libfribidi-dev
sudo apt install libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev

# install R -------------------------------------------------------------------

# update indices
sudo apt update -qq
# install two helper packages we need
sudo apt install --no-install-recommends software-properties-common dirmngr
# add the signing key (by Michael Rutter) for these repos
# To verify key, run gpg --show-keys /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc 
# Fingerprint: E298A3A825C0D65DFD57CBB651716619E084DAB9
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
# add the R 4.0 repo from CRAN -- adjust 'focal' to 'groovy' or 'bionic' as needed
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"


sudo apt install --no-install-recommends r-base
