# vim-configuration
My personal macOS vim configuration that I use daily.

# Step 1: Download
  Download and move the .vimrc file into your home folder

# Step 2: Source .vimrc or init.vim
  source the .vimrc or init.vim file and enter vim/neovim after.

# Step 3: Add vim.plug
  Now we have to add the vim/neovim plugin manager.
    Do so with this command for vim and the second one for neovim.
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

        sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Step 4: PlugInstall
  after completeing these 2 steps you may type the command :PlugInstall in vim but first you have to add some git repos.
  
# Final Step:
  Enjoy your new .vimrc configuration :)
