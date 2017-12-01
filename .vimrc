"REQUIRED FOR VUNDLE (can change after vundle#end())
set nocompatible "use vim instead of vi 
filetype off

"================================================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"================================================
" PLUGINS
"================================================
Plugin 'VundleVim/Vundle.vim'

"SURROUND COMMANDS => ysi", csi", ds'
Plugin 'tpope/vim-surround'
Plugin 'tpope/fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'junegunn/fzf'
Plugin 'jiangmiao/auto-pairs'
Plugin 'nathanaelkane/vim-indent-guides'
" Completion/Snippets
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'garbas/vim-snipmate'
Plugin 'SirVer/ultisnips'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

" JAVASCRIPT
Plugin 'jshint/jshint'
Plugin 'othree/es.next.syntax.vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'othree/html5.vim'
Plugin 'honza/vim-snippets'
"================================================
call vundle#end()
"================================================
syntax on
filetype on
filetype plugin indent on
set path+=**
set wildmenu
set wildmode=longest,full
set number
set relativenumber

" TAB SETTINGS (2 spaces)
set expandtab
set tabstop=2

" COLOR SETTINGS
set t_Co=256
set background=dark
colorscheme gruvbox

"======================================================
" SETTINGS FOR PLUGINS TO MAKE THEM WORK TOGETHER
"======================================================
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:syntastic_javascript_checkers = ['jshint', 'eslint']
let g:syntastic_always_populate_loc_list = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Enable indent guides by default
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_color_change_percent = 3
let g:indent_guides_guide_size = 1

"==================================================
"==================================================
" VIM KEYMAPPINGS
"==================================================
"==================================================
let mapleader=" "

nnoremap <leader>n :NERDTree<CR>
"verical splt, swtich to previous vim window, use FZF to search for file
nnoremap <leader>f :vsp<CR><C-w><C-p>:FZF<CR>

"for vsplit and split in vim
nnoremap <leader>\ :vsp<CR>
nnoremap <leader>- :sp<CR>

" auto resize current vim window
set winwidth=120
set winminwidth=5

" ====================================================
" NORMAL MODE 
" ====================================================
" Easier split navigations for vim splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>

nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap j gj
nnoremap k gk
nnoremap <Space>w :w<CR>
nnoremap Q :q<CR>
nnoremap QQ :q!<CR>

" HTML
" ================
nnoremap <leader>html :-1read $HOME/.vim/.skeleton/.htmlTag<CR>wf>a
nnoremap <leader>p :-1read $HOME/.vim/.skeleton/.pTag<CR>wf>a
nnoremap <leader>div :-1read $HOME/.vim/.skeleton/.divTag<CR>wf>a
nnoremap <leader>h1 :-1read $HOME/.vim/.skeleton/.h1Tag<CR>wf>a
nnoremap <leader>h2 :-1read $HOME/.vim/.skeleton/.h2Tag<CR>wf>a
nnoremap <leader>head :-1read $HOME/.vim/.skeleton/.includeHeaderTag<CR>wf%
nnoremap <leader>foot :-1read $HOME/.vim/.skeleton/.includeFooterTag<CR>wf%
nnoremap <leader>img :-1read $HOME/.vim/.skeleton/.imgTag<CR>f"a
nnoremap <leader>ejs :-1read $HOME/.vim/.skeleton/.ejsTag<CR>f%a

" ====================================================
" INSERT MODE
" ====================================================
inoremap ,div<Space> <div class=""></div><Esc>F<i
inoremap ,divej<Space> <div class=""></div><Esc>F<i
inoremap ,label<Space> <label></label><Esc>F<i
inoremap ,span<Space> <span></span><Esc>F<i
inoremap ,form<Space> <form class="" action="" method=""></form><Esc>F<i
inoremap ,input<Space> <input type="" name="" placeholder=""><Esc>3F=i
inoremap ,p<Space> <p></p><Esc>F<i
inoremap ,li<Space> <li></li><Esc>F<i
inoremap ,h1<Space> <h1></h1><Esc>F<i
inoremap ,h2<Space> <h2></h2><Esc>F<i
inoremap ,h3<Space> <h3></h3><Esc>F<i
inoremap ,h4<Space> <h4></h4><Esc>F<i
inoremap ,h5<Space> <h5></h5><Esc>F<i
inoremap ,h6<Space> <h6></h6><Esc>F<i

inoremap jk <Esc>:w<CR>
inoremap kj <Esc>:w<CR>
inoremap ,(( ({})<Esc>F}i
inoremap ,e<leader> <% <Esc>F%a
inoremap ,ee<leader> <%= %><Esc>F%i
inoremap ,f<leader> %>

au BufNewFile,BufRead *.ejs set filetype=html
