## Dotfiles wrapper (https://askubuntu.com/questions/62095/how-to-alias-git-to-g-so-that-bash-completion-rules-are-preserved/642778#642778)
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
compdef __git config
