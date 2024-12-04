# vim-configuration
My personal macOS vim configuration that I use daily.

# Step 1: Download
  Download and move the .vimrc file into your home folder

# Step 2: Source .vimrc
  source the .vimrc file and enter vim after.

# Step 3: PlugInstall
  after completeing these 2 steps you may type the command :PlugInstall in vim but first you have to add some git repos.

# Step 4: Git Repos
These are the repos needed to clone for vim to install:
  https://github.com/preservim/nerdtree             # File tree explorer
  https://github.com/vim-airline/vim-airline       # Status bar
  https://github.com/vim-airline/vim-airline-themes # Themes for vim-airline
  https://github.com/morhetz/gruvbox               # Gruvbox color scheme
  https://github.com/sheerun/vim-polyglot          # Syntax highlighting for multiple languages
  https://github.com/tpope/vim-fugitive            # Git integration
  https://github.com/jiangmiao/auto-pairs          # Auto-close brackets, quotes, etc.
  https://github.com/neoclide/coc.nvim             # Code completion and IntelliSense
  https://github.com/honza/vim-snippets            # Predefined snippets for multiple languages
  https://github.com/SirVer/ultisnips              # Snippet engine
  https://github.com/junegunn/fzf                  # Fuzzy finder engine
  https://github.com/junegunn/fzf.vim              # Fuzzy finder integration for Vim

# Step 4: Install Git Repos
  Commands to install the repos:

    git clone https://github.com/preservim/nerdtree ~/.vim/plugged/nerdtree
    git clone https://github.com/vim-airline/vim-airline ~/.vim/plugged/vim-airline
    git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/plugged/vim-airline-themes
    git clone https://github.com/morhetz/gruvbox ~/.vim/plugged/gruvbox
    git clone https://github.com/sheerun/vim-polyglot ~/.vim/plugged/vim-polyglot
    git clone https://github.com/tpope/vim-fugitive ~/.vim/plugged/vim-fugitive
    git clone https://github.com/jiangmiao/auto-pairs ~/.vim/plugged/auto-pairs
    git clone https://github.com/neoclide/coc.nvim ~/.vim/plugged/coc.nvim
    git clone https://github.com/honza/vim-snippets ~/.vim/plugged/vim-snippets
    git clone https://github.com/SirVer/ultisnips ~/.vim/plugged/ultisnips
    git clone https://github.com/junegunn/fzf ~/.vim/plugged/fzf
    git clone https://github.com/junegunn/fzf.vim ~/.vim/plugged/fzf.vim

# Final Step:
  Enjoy your new .vimrc configuration :)
