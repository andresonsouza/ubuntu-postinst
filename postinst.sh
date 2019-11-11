#Atualização e limpeza

sudo apt update;sudo apt dist-upgrade -y
sudo apt install -y deborphan
deborphan | xargs sudo apt autoremove --purge -y
