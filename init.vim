" =======================
" General Configuration
" =======================
set history=500             " Sets how many lines of history Neovim has to remember
filetype plugin indent on   " Enable filetype plugins and indent
set autoread                " Auto read when a file is changed externally
au FocusGained,BufEnter * silent! checktime

" Set mapleader for easy key mappings
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Sudo write for permission-denied files
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" =======================
" User Interface
" =======================
set so=7                     " Show 7 lines around cursor when moving vertically
set langmenu=en
set wildmenu                " Enable wild menu (auto-completion in command line)
set wildignore=*.o,*~,*.pyc,*.git/*,*.hg/*,*.svn/*,*.DS_Store  " Ignore compiled files and common VCS folders
set ruler                    " Show current position in the file
set cmdheight=1              " Height of the command bar
set hid                      " Hide abandoned buffers

" Search settings
set ignorecase               " Ignore case when searching
set smartcase                " Case-sensitive if uppercase is present
set hlsearch                 " Highlight search results
set incsearch                " Incremental search
set lazyredraw               " Prevent redrawing during macros for performance

" Bracket matching
set showmatch
set mat=2                    " Blink matching brackets for 0.2 seconds

" Misc UI
set noerrorbells
set novisualbell
set t_vb=                    " Disable visual bell
set foldcolumn=1             " Show folding indicator

" =======================
" Colors and Fonts
" =======================
syntax enable               " Enable syntax highlighting
set encoding=utf8           " Set utf8 as standard encoding
set background=dark         " Set background to dark for better contrast
set termguicolors           " Enable true color support (important for modern terminals)

" Set a colorscheme and ensure fallback if it fails
try
    colorscheme desert
catch
endtry

" =======================
" Files, Backups, Undo
" =======================
set nobackup                " Disable backup files
set nowb                     " Disable write backup
set noswapfile               " Disable swap files

" =======================
" Text, Tab, and Indentation
" =======================
set expandtab               " Use spaces instead of tabs
set smarttab                " Use smart tabbing (adjusts indent automatically)
set shiftwidth=4            " Indentation width for <<
set tabstop=4               " Number of spaces a tab is equivalent to
set ai                      " Enable auto-indentation
set si                      " Enable smart indentation
set wrap                    " Enable line wrapping
set lbr                     " Line break at 500 characters
set tw=500                  " Set text width to 500

" =======================
" CoC (coc.nvim) Configuration
" =======================
let g:coc_global_extensions = ['coc-snippets', 'coc-clangd', 'coc-pyright', 'coc-json', 'coc-tsserver']

" =======================
" Enable C/C++ Filetype Detection
" =======================
autocmd BufRead,BufNewFile *.cpp,*.h,*.c,*.cc,*.cxx set filetype=cpp
autocmd BufRead,BufNewFile *.cpp,*.h,*.c,*.cc,*.cxx setlocal foldmethod=syntax

" =======================
" Snippets Configuration
" =======================
let g:coc_snippet_next = '<Tab>'
let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'

" =======================
" Plugin Installation with vim-plug
" =======================
call plug#begin('~/.local/share/nvim/plugged')

" Core plugins
Plug 'preservim/nerdtree'           " File tree
Plug 'vim-airline/vim-airline'      " Status line
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'              " Gruvbox colorscheme
Plug 'sheerun/vim-polyglot'         " Syntax highlighting for many languages
Plug 'tpope/vim-fugitive'           " Git integration
Plug 'jiangmiao/auto-pairs'         " Auto-pairs for brackets/quotes

" CoC and Snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " CoC plugin for autocompletion and LSP
Plug 'honza/vim-snippets'                      " Snippet collection
Plug 'SirVer/ultisnips'                        " Snippet engine

" Fuzzy Finder and Utilities
Plug 'junegunn/fzf', { 'do': './install --all' }  " Fuzzy search
Plug 'junegunn/fzf.vim'

call plug#end()

" =======================
" Useful key mappings
" =======================
" Fast save with leader + w
nmap <leader>w :w!<cr>

" Smart window navigation using Ctrl+h/j/k/l
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close current buffer and tab
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Switch between buffers
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Toggle NERDTree with leader+t
map <leader>t :NERDTreeToggle<CR>

" =======================
" Miscellaneous Settings
" =======================
" Disable annoying sound
set noerrorbells
set novisualbell
set t_vb=

" Toggle paste mode with leader + pp
map <leader>pp :setlocal paste!<cr>

" Clean up trailing spaces on save
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif

" =======================
" Helper Functions
" =======================
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Open a new tab with the current file path
map <leader>te :tabedit <C-r>=escape(expand("%:p:h"), " ")<cr>/
