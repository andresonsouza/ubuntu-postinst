#Atualização e limpeza

sudo apt update;sudo apt dist-upgrade -y
sudo apt install -y deborphan
deborphan | xargs sudo apt autoremove --purge -y

#Kernel Liquorix
sudo add-apt-repository ppa:damentz/liquorix && sudo apt-get update
sudo apt-get install linux-image-liquorix-amd64 linux-headers-liquorix-amd64

#ZRAM
sudo apt install -y zram-config
