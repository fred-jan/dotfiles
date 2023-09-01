git clone http://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.config/zsh/plugins/zsh-syntax-highlighting

curl https://raw.githubusercontent.com/agnoster/agnoster-zsh-theme/master/agnoster.zsh-theme --create-dirs -o ~/.config/zsh/themes/agnoster.zsh-theme

# Install nerd font
curl -fLO --create-dirs --output-dir ~/.fonts https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/HackNerdFontMono-Regular.ttf
fc-cache -f -v

# Vim
# editorconfig-vim
git clone https://github.com/editorconfig/editorconfig-vim.git ~/.vim/pack/vendor/start/editorconfig-vim

# rainbow_csv
git clone git@github.com:mechatroner/rainbow_csv.git ~/.vim/pack/vendor/start/rainbow_csv

# fzf
git clone https://github.com/junegunn/fzf.git ~/.vim/pack/vendor/start/fzf
git clone https://github.com/junegunn/fzf.vim.git ~/.vim/pack/vendor/start/fzf.vim
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/fzf.vim/doc" -c q

# vim-gitgutter
git clone git@github.com:airblade/vim-gitgutter.git ~/.vim/pack/vendor/start/vim-gitgutter
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/vim-gitgutter/doc" -c q

# tagbar
git clone git@github.com:preservim/tagbar.git ~/.vim/pack/vendor/start/tagbar
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/tagbar/doc" -c q

# Debian-based installation of ctags (TODO: generalize)
sudo apt install universal-ctags

# NERDTree plugin
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

# vim-airline
git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/vendor/start/vim-airline
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/vim-airline/doc" -c q

# vim-nerdtree-syntax-highlight
git clone git@github.com:tiagofumo/vim-nerdtree-syntax-highlight.git ~/.vim/pack/vendor/start/vim-nerdtree-syntax-highlight
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/vim-nerdtree-syntax-highlight/doc" -c q

# nerdtree-git-plugin (needs to be loaded before vim-devicons)
git clone git@github.com:Xuyuanp/nerdtree-git-plugin.git ~/.vim/pack/vendor/start/nerdtree-git-plugin

# vim-devicons
git clone git@github.com:ryanoasis/vim-devicons.git ~/.vim/pack/vendor/start/vim-devicons
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/vim-devicons/doc" -c q
