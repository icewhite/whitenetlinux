echo "Hello - welcome to whitenetlinux!"

# Install zsh
if ! type zsh &> /dev/null; then
  sudo apt-get install zsh
else
  echo "zsh already installed"
fi

# Set zsh as default shell
if ! [ "$SHELL" = "/bin/zsh" ]; then 
  chsh -s /bin/zsh
fi

# oh-my-zsh
if [ -d ~/.oh-my-zsh ]; then
	echo "oh-my-zsh is installed"
 else
 	echo "oh-my-zsh is not installed"
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

# switch to agnoster https://github.com/agnoster/agnoster-zsh-theme
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/' ./.zshrc

sudo apt-get install fonts-powerline

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#enable plugins
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ./.zshrc
