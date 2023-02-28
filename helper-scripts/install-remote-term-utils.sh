# install zsh and oh my zsh
apt update -y
apt install zsh vim tmux gh -y

# change shell to zsh
chsh -s /usr/bin/zsh

# check if curl installed, install if not installed
which curl &> /dev/null || sudo apt install curl

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install omz plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Activate the plugins with the following commands
# omz plugin enable zsh-autosuggestions
# omz plugin enable zsh-syntax-highlighting
