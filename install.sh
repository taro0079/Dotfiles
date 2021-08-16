#!/bin/bash

# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install volta
curl https://get.volta.sh | bash

# Install starship
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# Install zsh-syntax-highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

for file in .??*
do
    [[ "$file" == ".git" ]] && continue
    [[ "$file" == ".DS_Store" ]] && continue

    ln -s $HOME/dotfiles/$file $HOME/$file
    echo "$file"
done


