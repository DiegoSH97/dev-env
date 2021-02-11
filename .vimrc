"Contiguration
set number 
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
set relativenumber
set laststatus=2
set noshowmode

"Set map leader
let mapleader=" "

"Plugins
call plug#begin('~/.vim/plugged')

"Themes
Plug 'rakr/vim-one'
"Plug 'tomasr/molokai'

"Full Screen
Plug 'lambdalisue/vim-fullscreen'

"EasyMotion
Plug 'easymotion/vim-easymotion'

"NerdTree
Plug 'scrooloose/nerdtree'

"NerdTree GIT
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

"Navigator
Plug 'christoomey/vim-tmux-navigator'

"COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"NerdTree Highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Git diff
Plug 'airblade/vim-gitgutter'

"CtrlP
Plug 'ctrlpvim/ctrlp.vim'

"Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

"Super Tab
Plug 'ervandew/supertab'

"Comment
Plug 'preservim/nerdcommenter'

"Color css 
Plug 'ap/vim-css-color'

"Laravel
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'noahfrederick/vim-composer'
Plug 'noahfrederick/vim-laravel'

"Indent-guides
Plug 'nathanaelkane/vim-indent-guides'

"PHP
Plug 'stephpy/vim-php-cs-fixer'

"Emmet
Plug 'mattn/emmet-vim'
call plug#end()

"Vim-One
"let g:airline_theme='one'
"colorscheme one

"Molokai
colorscheme molokai 
let g:molokai_original = 1
let g:rehash256 = 1

"EasyMotion
nmap <Leader>s <Plug>(easymotion-s2)

"NerdTree
nmap <Leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1
let g:NERDTreeIgnore = ['^node_modules$', '^vendor$']

"NerdTree
let g:NERDTreeGitStatusWithFlags = 1

"Custom SortCuts
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

"NerdTree Highlight
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 
let g:NERDTreeHighlightFoldersFullName = 1 

"CtrlP 
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/node_modules/*  

"Indent
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

"PHP-CS-FIXER
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()
