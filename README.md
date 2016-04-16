# My dotfiles

My personal configuration files I use on Mac OS X, Linux and Windows(cygwin).

## Vim plugins
I use [pathogen](https://github.com/tpope/vim-pathogen) to install the following plugins (in ls order).

- Latex-Box
- MatchTagAlways
- colorschemes
- csv.vim
- editorconfig-vim
- nerdcommenter
- nerdtree
- vim-airline
- vim-ansible-yaml
- vim-autoclose
- vim-fugitive
- vim-gitgutter
- vim-json
- vim-markdown
- vim-nerdtree-tabs
- vim-script-runner

## Installation

    git clone --recursive https://github.com/dogukancagatay/dotfiles.git
    cd dotfiles
    make

# Uninstallation

    cd dotfiles
    make clean
