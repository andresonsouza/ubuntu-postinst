## Principais compiladores e dependências de desenvolvimento do sistema

```bash
sudo apt install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common git vim-gtk3 curl
```

## Utilitários - Postgresql, Redis e memcached

```bash
sudo apt -y install postgresql postgresql-contrib redis-server libhiredis-dev memcached libmemcached-dev
```

## Configurando postgresql

```bash
sudo -u postgres -i
createuser --interactive # create with your username and superuser role
createdb youruser
exit
sudo systemctl restart postgresql
```

## Docker - https://get.docker.com/

```bashsudo apt-get remove docker docker-engine docker.io
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker andreson
```

```bash
base=https://github.com/docker/machine/releases/download/v0.16.0 &&
  curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&
  sudo mv /tmp/docker-machine /usr/local/bin/docker-machine &&
  chmod +x /usr/local/bin/docker-machine
```

## Docker Compose - https://github.com/docker/compose/releases

```bash
sudo -i
curl -L https://github.com/docker/compose/releases/download/1.25.1-rc1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
```

## Docker Machine - https://github.com/docker/machine/releases

```bash
curl -L https://github.com/docker/machine/releases/download/v0.16.2/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
    chmod +x /tmp/docker-machine &&
    sudo cp /tmp/docker-machine /usr/local/bin/docker-machine
```

## MongoDB

```bash
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
sudo apt-get install gnupg
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt update
sudo apt-get install -y mongodb-org
sudo mkdir -p /data/db
sudo chown `id -u` /data/db
```

## Gerenciado de versionamento de linguagens ASDF

```bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.6
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
sudo apt install \
  automake autoconf libreadline-dev \
  libncurses-dev libssl-dev libyaml-dev \
  libxslt-dev libffi-dev libtool unixodbc-dev \
  unzip curl
```

## Clojure

```bash
asdf plugin-add clojure https://github.com/vic/asdf-clojure.git
asdf list-all clojure
asdf install clojure 1.10.1 #update_version
asdf global clojure 1.10.1 #update_version
```

## kotlin

```bash
asdf plugin-add kotlin https://github.com/missingcharacter/asdf-kotlin.git
asdf list-all kotlin
asdf install kotlin 1.3.61 #update_version
asdf global kotlin 1.3.61 #update_version
```

## Elixir

```bash
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf list-all elixir
asdf install elixir 1.9.4 #update_version
asdf global elixir 1.9.4 #update_version
```

## Erlang

```bash
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf list-all erlang
asdf install erlang 22.1.8 #update_version
asdf global erlang 22.1.8 #update_version
```

## Golang

```bash
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf list-all golang
asdf install golang 1.13.5 #update_version
asdf global golang 1.13.5 #update_version
```

## Ruby

```bash
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf list-all ruby
asdf install ruby 2.6.5 #update_version
asdf global ruby 2.6.5 #update_version
```

## Rust

```bash
asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
asdf list-all rust
asdf install rust 1.39.0 #update_version
asdf global rust 1.39.0 #update_version
```

## Crystal

```bash
asdf plugin-add crystal https://github.com/marciogm/asdf-crystal.git
asdf list-all crystal
asdf install crystall 0.32.0 #update_version
asdf global crystal 0.32.0 #update_version
```

## NodeJs

```bash
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf list-all nodejs
asdf install nodejs 12.16.1 #update_version
asdf global nodejs 12.16.1 #update_version
npm i -g npm
```

## Angular

```bash
npm install -g @angular/cli
```

## Typescript

```bash
npm install -g typescript
```

## Habilitar snapd

```bash
sudo apt update
sudo apt install snapd
```

# Spotify

```bash
sudo apt update
sudo snap install spotify
```

## Slack

```bash
sudo apt update
sudo snap install slack --classic
```

## Brave

```bash
sudo apt update
sudo snap install brave
```

## Telegram

```bash
sudo apt update
sudo snap install telegram-desktop
```

## Wine

```bash
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'https://dl.winehq.org/wine-builds/ubuntu/'
sudo apt update
sudo apt install wine-stable
sudo apt install winetricks
```

## xanmod kernel

```bash
echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list && wget -qO - https://dl.xanmod.org/gpg.key | sudo apt-key add -
sudo apt update && sudo apt install linux-xanmod
sudo update-grub
```

## Zram

```bash
sudo apt-get install zram-config
```

## Ubuntu Studio Controls

```bash
sudo add-apt-repository ppa:ubuntustudio-ppa/backports
sudo apt update
sudo apt full-upgrade
sudo apt install ubuntustudio-controls
sudo gpasswd -a andreson audio
```

## Airwave manager

```bash
wget -c https://github.com/psycha0s/airwave/releases/download/1.3.3/airwave_1.3.3-1_amd64.deb
sudo dpkg -i airwave_1.3.3-1_amd64.deb
```

## Reaper

```bash
wget -c https://www.reaper.fm/files/6.x/reaper602_linux_x86_64.tar.xz
sudo apt instala xz-utils
tar -xvf reaper602_linux_x86_64.tar.xz
cd reaper_linux_x86_64/
sh install-reaper.sh
wget -c https://landoleet.org/old/reaper_sws_x86_64_fc28caa7.tar.xz
tar -xvf reaper_sws_x86_64_fc28caa7.tar.xz
mkdir ~/.config/REAPER/UserPlugins/
cp reaper_sws64.so ~/.config/REAPER/UserPlugins/
wget -c https://github.com/cfillion/reapack/releases/download/v1.2.2/reaper_reapack64.so
cp reaper_reapack64.so ~/.config/REAPER/UserPlugins/
```