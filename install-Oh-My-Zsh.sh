# Change to Home Directory
cd ~

# Make zsh the standard shell
chsh -s $(which zsh)

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Download and install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 

# Download and install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 

# Install Prerequisits for autojump
sudo apt update && sudo apt install python && sudo apt install python3

# Download and install autojump
git clone http://github.com/wting/autojump.git
cd ~/autojump
./install.py

# Download and install Zsh theme "powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Copy fonts
mkdir ~/.fonts
cp ~/linux-config/powerlevel10k_fonts/* ~/.fonts/

# Linking configuration file
ln -s -f ~/linux-config/powerlevel10k/.p10k.zsh ~/.p10k.zsh

# Disable Oh-my-Zsh configuration tool
echo 'POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true' >>! ~/.zshrc

# Source Powerlevel10k theme
echo 'source ~/.p10k.zsh' >>! ~/.zshrc

echo "The plugins have to be set in .zshrc 'plugins=(zsh-autosuggestions git docker docker-compose autojump zsh-syntax-highlighting dnf npm)'"
echo "Set ZSH_THEME=\"powerlevel10k/powerlevel10k\" in ~/.zshrc"
echo "Change font in your Terminal to 'MesloLGS NF Refular'"
