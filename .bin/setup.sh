git clone http://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.config/zsh/plugins/zsh-syntax-highlighting

curl https://raw.githubusercontent.com/agnoster/agnoster-zsh-theme/master/agnoster.zsh-theme --create-dirs -o ~/.config/zsh/themes/agnoster.zsh-theme

# Vim
# NERDTree plugin
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
