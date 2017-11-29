set nocompatible
filetype off

set tabstop=2
set expandtab
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

" Easier split navigations for vim splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap j gj
nnoremap k gk

" Saves the file (maybe)
inoremap <C-Space> :w<CR>
nnoremap <C-Space> :w<CR>

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

inoremap \div <div class=""></div><Esc>F<i
inoremap \label <label></label><Esc>F<i
inoremap \span <span></span><Esc>F<i
inoremap \form <form class="" action="" method=""></form><Esc>F<i
inoremap \input <input type="" name="" placeholder=""><Esc>3F=i
inoremap \p <p></p><Esc>F<i
inoremap \h1 <h1></h1><Esc>F<i
inoremap \h2 <h2></h2><Esc>F<i
inoremap \h3 <h3></h3><Esc>F<i
inoremap \h4 <h4></h4><Esc>F<i
inoremap \h5 <h5></h5><Esc>F<i
inoremap \h6 <h6></h6><Esc>F<i

inoremap ,e<leader> <% %><Esc>F%i
inoremap ,q<leader> <%= %><Esc>F%i
inoremap ,f<leader> %>
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
