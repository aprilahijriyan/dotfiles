echo "Installing git, git-flow, curl & zsh..."
sudo apt install git git-flow curl zsh -y
echo "Installing python..."
sudo apt install python3-dev python3-pip -y
sudo pip3 install virtualenv
echo "Installing nodejs..."
sudo apt install nodejs npm -y
sudo npm install -g yarn
echo "Installing docker & docker-compose..."
sudo apt install docker.io
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.6/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "Installing firefox..."
sudo apt install firefox
echo "Installing antigen & oh-my-zsh..."
curl -L git.io/antigen > ~/.antigen.zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv -f ~/.zshrc ~/.zshrc.bkp
cp .zshrc ~/
echo "Done!"
echo "If the default shell hasn't changed, please restart your computer. Thx :)"
