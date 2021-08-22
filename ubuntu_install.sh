#!/bin/bash
# initialize package manager
sudo apt update
sudo apt upgrade
sudo apt install build-essential curl

# Install github cil
if type "gh" > /dev/null 2>&1; then
	echo "gh is already installed"
else
	curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
	echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
	sudo apt update
	sudo apt install gh
fi

# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

if type "starship" > /dev/null 2>&1; then
	echo "starship is already installed !"
else 
	sh -c "$(curl -fsSL https://starship.rs/install.sh)"
fi

if type "volta" > /dev/null 2>&1; then
	echo "volta is already installed !"
else 
	curl https://get.volta.sh | bash
fi

# Install zsh-syntax-highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/zsh-syntax-highlighting

## Install cargo
if type "cargo" > /dev/null 2>&1; then
	echo "rustup is already installed !"
else 
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

if type "exa" > /dev/null 2>&1; then
	echo "exa is already installed !"
else 
	cargo install exa
fi

for file in .??*
do
    [[ "$file" == ".git" ]] && continue
    [[ "$file" == ".DS_Store" ]] && continue


    if [ $file == ".config" ] ; then
	    for f in .config/??*
	    do
		    ln -sfnv $HOME/Dotfiles/$f $HOME/$f
	    done
    else
	    ln -sfnv $HOME/Dotfiles/$file $HOME/$file
    fi
done



