set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'




call vundle#end()
filetype plugin indent on

syntax on
set path+=**
set wildmenu
set number
set relativenumber

set t_Co=256
set background=dark
colorscheme wombat256mod
nnoremap <leader> <Space>
