" cursors
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


" GLOBAL SETTINGS

"set list
"set paste
set termguicolors
set clipboard=unnamedplus
set cursorline
set cursorcolumn
set background=dark
set number
set nocompatible
set shiftwidth=2
"set notimeout
set tabstop=2
set softtabstop=2
"set expandtab
set smarttab
set encoding=utf-8
set updatetime=500
set hidden
set nobackup
set nowritebackup
set scrolloff=10
set autoread
set incsearch
set ignorecase
set smartcase
set signcolumn=yes
set showcmd
set cmdheight=2
set splitright
set splitbelow
set showmatch
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set mouse=a

filetype on
filetype plugin on
filetype indent on
syntax on

if !isdirectory(expand('~/.vim/undo'))
  silent! call mkdir(expand('~/.vim/undo'), 'p')
endif
set undodir=~/.vim/undo
set undofile
set undoreload=10000


" Plugins

call plug#begin('~/.vim/plugged')

  Plug 'dense-analysis/ale'
  Plug 'preservim/nerdtree'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'itchyny/lightline.vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'junegunn/fzf.vim'
	Plug 'ryanoasis/vim-devicons'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'jiangmiao/auto-pairs'
	Plug 'vim-airline/vim-airline'
	Plug 'honza/vim-snippets'
"  Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }

" some themes already in .vim/colors
	Plug 'rafi/awesome-vim-colorschemes'
	Plug 'dracula/vim'
	Plug 'junegunn/seoul256.vim'
	Plug 'ayu-theme/ayu-vim'
	Plug 'flazz/vim-colorschemes'
	Plug 'dikiaap/minimalist'
	Plug 'kristijanhusak/vim-hybrid-material'
	Plug 'cocopon/iceberg.vim'
	Plug 'sainnhe/sonokai'
	Plug 'sam4llis/nvim-tundra'
	Plug 'EdenEast/nightfox.nvim'
	Plug 'bluz71/vim-moonfly-colors'
	Plug 'Th3Whit3Wolf/one-nvim'
	Plug 'shaunsingh/nord.nvim'
	Plug 'tomasr/molokai'
	Plug 'tanvirtin/monokai.nvim'
	Plug 'savq/melange'
	Plug 'joshdick/onedark.vim'
	Plug 'chriskempson/base16-vim'
	Plug 'psf/black'
	Plug 'sainnhe/everforest'
	Plug 'marko-cerovac/material.nvim'
	Plug 'morhetz/gruvbox'
	Plug 'vim-syntastic/syntastic'

call plug#end()

"
" MAPPINGS

" map leader
let g:mapleader = ","
map \ <leader>

" return to normal mode
inoremap jj <esc>

" hide search highlights
nnoremap <leader>0 :nohlsearch<CR>

" cancel command mode
cnoremap jj <C-c>
cnoremap JJ <C-c>

" shortcut for :wq
cnoremap wq wq<CR>

" new lines
nnoremap oo o
nnoremap oi O<esc>
nnoremap op o<esc>

" search centralization
nnoremap n nzz
nnoremap N Nzz

" split
nnoremap <leader>- :split<cr>
nnoremap <leader>v :vsplit<cr>

" shortcut for :
nnoremap <space> :

" undo and redo
map <C-z> u
map <C-y> <C-r>

" save
imap <C-s> <esc>:w<CR>a
nmap <C-s> <esc>:w<CR>
vmap <C-s> <esc>:w<CR>

" split navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" nerd tree
nmap <C-\> :NERDTreeToggle<CR>

" create a tab
nmap te :tabe<CR>

" home and end shortcut
nmap <leader>h 0
nmap <leader>l $

" navigate between buffers
nmap ty :bn<CR>
nmap tr :bp<CR>

" delete a buffer
nmap td :bd<CR>

" create splits
nmap th :split<CR>
nmap tv :vsplit<CR>

" close splits and others
nmap tt :q<CR>

" call command shortcut
nmap tc :!

" only hjkl moving
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>



" AUTOCMD'S
"
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END

" highlight matching words under the cursor.
"function! HighlightWordUnderCursor()
"    if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]'
"        exec 'match' 'Search' '/\V\<'.expand('<cword>').'\>/'
"    else
"        match none
"    endif
"endfunction
"autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()

" THEME

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 0
let g:sonokai_diagnostic_line_highlight = 1
let g:sonokai_current_word = 'bold'

colorscheme sonokai

" AIRLINE
"
let g:airline_theme = 'sonokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts =1
let g:airline_section_a = '%f %m'
let g:airline_section_b = 'ascii: %b hex: 0x%B'
let g:airline_section_c = 'row: %l col: %c'

" ALE
"
let g:ale_linters = {}
let g:ale_fixers = {'*': ['trim_whitespace']}
let g:ale_fix_on_save = 1

let g:ale_c_compiler = 'gcc'

