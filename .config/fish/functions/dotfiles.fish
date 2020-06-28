function dotfiles
command /usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME $argv
end