set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
        source ~/.vimrc
        source $HOME/.config/nvim/keys/which-key.vim
        source $HOME/.config/nvim/plug-config/start-screen.vim
        source $HOME/.config/nvim/plug-config/coc.vim
