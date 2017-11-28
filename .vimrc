set nocompatible
filetype off

set tabstop=2
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-surround'
Plugin 'tpope/fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'junegunn/fzf'
Plugin 'jiangmiao/auto-pairs'

Plugin 'ternjs/tern_for_vim'
" if you use Vundle, load plugins:
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'garbas/vim-snipmate'
Plugin 'SirVer/ultisnips'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

Plugin 'othree/html5.vim'
" Optional
Plugin 'honza/vim-snippets'


call vundle#end()
filetype plugin indent on

syntax on
set path+=**
set wildmenu
set wildmode=longest,full
set number
set relativenumber

set t_Co=256
set background=dark
colorscheme wombat256mod

nnoremap j gj
nnoremap k gk
let mapleader=" "
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>f :FZF<CR>

" HTML MAPPINGS <Space> + tag
nnoremap <leader>html :-1read $HOME/.vim/.skeleton/.htmlTag<CR>wf>a
nnoremap <leader>p :-1read $HOME/.vim/.skeleton/.pTag<CR>wf>a
nnoremap <leader>div :-1read $HOME/.vim/.skeleton/.divTag<CR>wf>a
nnoremap <leader>h1 :-1read $HOME/.vim/.skeleton/.h1Tag<CR>wf>a
nnoremap <leader>h2 :-1read $HOME/.vim/.skeleton/.h2Tag<CR>wf>a
nnoremap <leader>head :-1read $HOME/.vim/.skeleton/.includeHeaderTag<CR>wf%
nnoremap <leader>foot :-1read $HOME/.vim/.skeleton/.includeFooterTag<CR>wf%
nnoremap <leader>img :-1read $HOME/.vim/.skeleton/.imgTag<CR>f"a
nnoremap <leader>ejs :-1read $HOME/.vim/.skeleton/.ejsTag<CR>f%a

inoremap \e <%
inoremap \q <%=
inoremap \f %>
"set omnifunc=htmlcomplete#CompleteTags
"to prevent clash with youcompleteme, change snippet trigger
"imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
"smap <C-J> <Plug>snipMateNextOrTrigger
" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'
"
"" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
 
" better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsExpandTrigger="<cr>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"
