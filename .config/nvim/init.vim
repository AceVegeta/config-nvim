" Import global variables (plugins)
" source ~/.config/nvim/variables.vim

" Automatic install
" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Theme
Plug 'arcticicestudio/nord-vim'
" See https://github.com/neovim/neovim/issues/7544 in regards to indent guides
" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Code completion
Plug 'mattn/emmet-vim'

call plug#end()

" Colorscheme
set termguicolors
silent! colorscheme nord
