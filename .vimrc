call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

Plug 'Shougo/unite.vim'
Plug 'voldikss/vim-floaterm'
call plug#end()

colorscheme habamax
set belloff=all
set number
set ignorecase
set smartcase
set relativenumber
set cursorline
set list
set autochdir
set noswapfile
set hidden

nnoremap <leader>d :Unite file<CR>

nnoremap <leader>b :Buffers<CR>
nnoremap <leader>h :History<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :Lines<CR>

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>j :Jumps<CR>

nnoremap <leader>t :FloatermToggle<CR>

let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 1.0 } }
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9
