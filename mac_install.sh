# make sure macvim is installed the way we need
brew remove macvim
brew install macvim --with-cscop --with-lua --HEAD --override-system-vim

# make sure ctags-exuberant has been installed
brew install ctags-exuberant

# vim-go requires hg in order for :GoInstallBinaries to succeed
brew install hg

# get amix's vimrc setup
git clone git://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# remove a couple of the plugins I don't want
rm -r ~/.vim_runtime/sources_non_forked/vim-zenroom2
rm -r ~/.vim_runtime/sources_non_forked/vim-golang

# add a few plugins I do want
git clone git@github.com:fatih/vim-go.git ~/.vim_runtime/sources_non_forked/vim-go
git clone git@github.com:majutsushi/tagbar.git ~/.vim_runtime/sources_non_forked/tagbar
git clone git@github.com:Shougo/neocomplete.vim.git ~/.vim_runtime/sources_non_forked/neocomplete

# add some color schemes
mkdir -p ~/.vim_runtime/colors
curl -o ~/.vim_runtime/colors/molokai.vim https://raw.githubusercontent.com/fatih/molokai/master/colors/molokai.vim

# set my vim config settings
cp ./my_configs.vim ~/.vim_runtime

# print a couple of reminders
echo ''
echo '--------------------------------------------------------------'
echo '** Make sure /usr/local/path is before /usr/path in $PATH'
echo '** If mvim open-fullscreen is annoying, comment out lines 22-26 in ~/.vim_runtime/vimrcs/extended.vim (`if has("gui_macvim")...`)'
echo '--------------------------------------------------------------'
echo ''
