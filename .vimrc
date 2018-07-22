call plug#begin()

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'gregsexton/MatchTag'
Plug 'bling/vim-airline'
Plug 'tpope/vim-projectionist'
Plug 'vim-scripts/HTML-AutoCloseTag'
Plug 'tpope/vim-endwise'
Plug 'google/vim-searchindex'
Plug 'digitaltoad/vim-jade'
Plug 'vim-ruby/vim-ruby'                " ( needs +ruby for omnifunc support )
Plug 'altercation/vim-colors-solarized' " ( :colo )
Plug 'tpope/vim-fugitive'               " ( :Gstatus )
Plug 'junegunn/gv.vim'                  " ( :GV )
Plug 'tpope/vim-vinegar'                " ( - )
Plug 'scrooloose/nerdtree'              " ( ctrl-n )
Plug 'kien/ctrlp.vim'                   " ( ctrl-p )
Plug 'jlanzarotta/bufexplorer'          " ( ctrl-b )
Plug 'scrooloose/nerdcommenter'         " ( ,cc ,c<spc> )
Plug 'tpope/vim-surround'               " ( cs'> ds' <VISUAL>S')
Plug 'tpope/vim-repeat'                 " ( . )
Plug 'nathanaelkane/vim-indent-guides'  " ( ,ig )
Plug 'mhinz/vim-startify'               " ( :SLoad :SSave :SClose )
Plug 'bling/vim-bufferline'             " ( :h bufferline )
Plug 'airblade/vim-rooter'              " ( ,cd )
Plug 'tpope/vim-unimpaired'             " ( ]e [e yO yo coh con cor )
Plug 'takac/vim-hardtime'               " ( :HardTimeOn )
Plug 'AndrewRadev/splitjoin.vim'        " ( gS gJ )
Plug 'hsanson/vim-projtags'             " ( :ProjTagsGen :ProjTagsLoad )
Plug 'mklabs/grunt.vim'                 " ( :Grunt :Gtest )
Plug 'guns/xterm-color-table.vim'       " ( :XtermColorTable )
Plug 'spolu/dwm.vim'                    " ( C-n C-c C-j C-<spc> )
Plug 'aquach/vim-http-client'           " ( ,tt )
Plug 'mattn/emmet-vim'                  " ( C-y, )
Plug 'junegunn/goyo.vim'                " ( :Goyo, :Goyo! )
Plug 'junegunn/limelight.vim'           " ( autocmd set with :Goyo )
Plug 'junegunn/vim-peekaboo'            " ( preview registers, C-r in insert-mode )
Plug 'junegunn/vim-xmark'               " ( :Xmark, :Xmark! )
Plug 'junegunn/vim-easy-align'          " ( :EasyAlign =, gaip=, vipga= )
Plug 'majutsushi/tagbar'                " ( ,t )
Plug 'ElmCast/elm-vim'                  " ( ,r ,m ,b ,e ,d ,o )
Plug 'ktonga/vim-follow-my-lead'        " ( ,fml )
" Plug 'godlygeek/tabular'                  " ( :Tab / = )
" Plug 'JamshedVesuna/vim-markdown-preview' " ( C-m generates /tmp/vim-...-preview.html )
" Plug 'SirVer/ultisnips'                   " ( C-f C-b )

call plug#end()
" PlugInstall

set nocompatible
syntax on
filetype plugin indent on

set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
set ignorecase
set smartcase
set ruler
set showcmd
set laststatus=2
set number
set encoding=utf-8

" set background=light
" let g:solarized_termcolors = 256
" let g:airline_theme = "solarized"

" 16 when term palette matches solarized
" 256 when term palette doesn't match
" let g:solarized_termcolors = 16
" let g:airline_theme = "dark"
" let g:airline#extensions#tabline#enabled = 1

set background=dark
colorscheme solarized

" colorscheme default
" hi Search ctermbg=111

set wildignore+=*/node_modules/*,*/bower_components/*,*.swp,*.zip,*/dist/*,*/elm-stuff/*
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

let mapleader = ","

inoremap jk <ESC>
inoremap <TAB> <C-p>

vnoremap . :norm.<CR>

nnoremap <leader>n :NERDTreeToggle<CR>
noremap <silent> <C-b> :BufExplorer<CR>

:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>

nnoremap ; :
nnoremap ' ;

nnoremap n nzz
nnoremap N Nzz

nnoremap <leader>ev :vs $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>ww :w<CR>
nnoremap <leader>s :source $MYVIMRC<CR>
nnoremap <leader>ss :source $MYVIMRC<CR>

nnoremap <leader>d <C-d>
nnoremap <leader>u <C-u>
nnoremap <silent> <Leader>t :TagbarToggle<CR>

autocmd FileType ruby compiler ruby

augroup filetype_html
    autocmd!
    autocmd FileType html nnoremap <buffer> <leader>f Vatzf
augroup end

autocmd BufReadPost fugitive://* set bufhidden=delete

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

let g:projtags_list = {
    \ 'android': [
    \     '~/projects/android-playground/ActiveAndroid-master/src',
    \     '~/Downloads/adt-bundle-mac-x86_64-20130729/sdk/sources/android-19',
    \     ]
    \ }

let g:tagbar_type_typescript = {
    \ 'ctagstype': 'typescript',
    \ 'kinds': [
    \   'c:classes',
    \   'a:abstract classes',
    \   'n:modules',
    \   't:types',
    \   'f:functions',
    \   'v:variables',
    \   'l:varlambdas',
    \   'm:members',
    \   'i:interfaces',
    \   'e:enums',
    \   'I:imports'
    \   ]
    \ }

let g:XtermColorTableDefaultOpen = 'vsplit'
let g:hardtime_default_on = 0
let g:bufferline_echo = 0
let g:dwm_version = 0
let g:limelight_conceal_ctermfg = 0
let g:fml_all_sources = 1

let g:elm_setup_keybindings = 0
au FileType elm nmap <leader>m <Plug>(elm-make)
au FileType elm nmap <leader>b <Plug>(elm-make-main)
au FileType elm nmap <leader>r <Plug>(elm-repl)
au FileType elm nmap <leader>e <Plug>(elm-error-detail)
au FileType elm nmap <leader>o <Plug>(elm-show-docs)
au FileType elm nmap <leader>d <Plug>(elm-browse-docs)

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" let vim_markdown_preview_hotkey='<C-m>'
" let vim_markdown_preview_browser='Google Chrome'
" let vim_markdown_preview_github=1

" let g:UltiSnipsExpandTrigger='<c-f>'
" let g:UltiSnipsJumpForwardTrigger='<c-f>'
" let g:UltiSnipsJumpBackwardTrigger='<c-b>'
" let g:UltiSnipsSnippetDirectories=['ultisnips']
