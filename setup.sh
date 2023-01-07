#!/bin/bash

# github.com/saulo-miranda

# Update

sudo apt update

# Install nodejs and npm (NVM)

cd ~
curl -sL https://deb.nodesource.com/setup_18.x -o /tmp/nodesource_setup.sh

sudo bash /tmp/nodesource_setup.sh

sudo apt install -y nodejs

echo "NodeJS hydrogen instalado"

# Install VS Code

wget https://az764295.vo.msecnd.net/stable/e8a3071ea4344d9d48ef8a4df2c097372b0c5161/code_1.74.2-1671533413_amd64.deb -O /tmp/vscode.deb

sudo apt install /tmp/vscode.deb

# Install Yarn

sudo npm install -g yarn

# Install Vue CLI

yarn global add  @vue/cli

# Install Insomnia

echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list

sudo apt update

sudo apt install -y insomnia

# Install Java 17

sudo apt install -y openjdk-17-jdk openjdk-17-jre

# Install Snapd

# Maybe the distro blocks the use of snap packages
sudo rm /etc/apt/preferences.d/nosnap.pref

sudo apt install snapd -y

# Install Chrome

sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

sudo apt update

sudo apt install google-chrome-stable -y

# Install Flutter

sudo snap install flutter --classic

sudo snap alias flutter.dart dart

sudo snap install android-studio --classic

flutter config --android-studio-dir /snap/android-studio/current/android-studio

flutter doctor --android-licenses

flutter doctor

# Install powerline

sudo apt install -y powerline powerline-fonts

echo "if [ -f `which powerline-daemon` ]; then" >> ~.bashrc
echo "	powerline-daemon -q" >> ~.bashrc
echo "	POWERLINE_BASH_CONTINUATION=1" >> ~.bashrc
echo "	POWERLINE_BASH_SELECT=1" >> ~.bashrc
echo "	./usr/share/powerline/bash/powerline.sh" >> ~.bashrc
echo "fi" >> ~.bashrc

# Install Telegram

sudo apt install -y telegram-desktop

# Install i3wm

sudo apt install -y i3 i3-wm i3status

wget terminalroot.com.br/sh/aptporn
chmod +x aptporn
./aptporn --install

echo " If i3 customization didn't complete run ./aptporn --install-all"

# Install Vlc

sudo apt install -y vlc

# Install Go

sudo snap install go --classic

# Install Intellij Idea

sudo snap install intellij-idea-community --classic

echo "####### INSTALLATION FINISHED #######"
