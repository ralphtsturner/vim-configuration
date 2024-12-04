" =======================
" General Vim Configuration
" =======================
syntax on
filetype plugin indent on
set nocompatible                   " Disable vi compatibility
set clipboard=unnamed              " Use system clipboard
set mouse=a                        " Enable mouse support
set termguicolors                  " Enable 24-bit colors
set number                         " Show line numbers
set relativenumber                 " Show relative line numbers
set tabstop=4 shiftwidth=4 expandtab " Use spaces instead of tabs
set undofile                       " Enable persistent undo
set updatetime=300                 " Faster completion response time
set lazyredraw                     " Faster scrolling and search
set splitbelow                     " New splits open below
set splitright                     " New splits open to the right
set ignorecase                     " Case insensitive search
set smartcase                      " Case-sensitive if uppercase exists

" =======================
" Vim-Plug for Plugin Management
" =======================
call plug#begin('~/.vim/plugged')

" Core plugins
Plug 'preservim/nerdtree'          " File tree
Plug 'vim-airline/vim-airline'     " Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'             " Gruvbox colorscheme
Plug 'sheerun/vim-polyglot'        " Language packs for syntax
Plug 'tpope/vim-fugitive'          " Git integration
Plug 'jiangmiao/auto-pairs'        " Auto-close brackets, quotes, etc.

" Code snippets and completion
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Autocompletion and suggestions
Plug 'honza/vim-snippets'                       " Snippet collection
Plug 'SirVer/ultisnips'                         " Snippet engine

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

" =======================
" Colors and UI
" =======================
colorscheme gruvbox
set background=dark

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" =======================
" CoC Configuration (Intelligent Suggestions)
" =======================
" Use CoC for autocompletion
let g:coc_global_extensions = ['coc-snippets', 'coc-pyright', 'coc-clangd', 'coc-json', 'coc-html', 'coc-tsserver']

" Trigger completion with Tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" =======================
" Snippet Configuration
" =======================
" UltiSnips Configuration
let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'

" Coc Snippets Configuration (CoC Snippets will use this)
" Note: CocSnippets are defined through the coc settings file.

" =======================
" Key Mappings
" =======================
let mapleader = " "
nnoremap <Leader>w :w<CR>                 " Save file
nnoremap <Leader>q :q<CR>                 " Quit
nnoremap <Leader>n :nohlsearch<CR>        " Clear search highlights
nnoremap <Leader>f :Files<CR>             " Fuzzy search
nnoremap <Leader>t :NERDTreeToggle<CR>    " Toggle NERDTree

" Resize splits
nnoremap <silent> <C-Up>    :resize -2<CR>
nnoremap <silent> <C-Down>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>

" New tab key map
nnoremap <C-n> :tabnew<Space>
