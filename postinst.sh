#Atualização e limpeza

sudo apt update;sudo apt dist-upgrade -y
sudo apt install -y deborphan
deborphan | xargs sudo apt autoremove --purge -y

#Kernel Liquorix
sudo add-apt-repository ppa:damentz/liquorix && sudo apt-get update
sudo apt-get install linux-image-liquorix-amd64 linux-headers-liquorix-amd64

#ZRAM
sudo apt install -y zram-config

#Wine
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'https://dl.winehq.org/wine-builds/ubuntu/'
sudo apt update
sudo apt install --install-recommends winehq-staging
sudo apt install winetricks

#Rambox
wget -c https://github.com/ramboxapp/community-edition/releases/download/0.6.9/Rambox-0.6.9-linux-amd64.deb #update_link
sudo apt install -y ./Rambox*.deb

#Principais compiladores
sudo apt install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common git vim-gtk3 curl

#4KVideoDownloader
wget -c https://dl.4kdownload.com/app/4kvideodownloader_4.9.3-1_amd64.deb
sudo apt install -y ./4kvideodownloader*.deb

#Etcher
wget -c https://github.com/balena-io/etcher/releases/download/v1.5.57/balena-etcher-electron_1.5.57_amd64.deb #update_link
sudo apt install -y ./balena-etcher*.deb

#Stacer
wget -c https://github.com/oguzhaninan/Stacer/releases/download/v1.1.0/stacer_1.1.0_amd64.deb
sudo apt install -y ./stacer*.deb
