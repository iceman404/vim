@Author: John Subba
"My personal vimrc
"Date: Aug-14, 2023

"My Personal Vim Setup"


syntax on                                               "Enable syntax highlighting
set autoindent                                          "Respect indentation when starting a new line.
set tabstop=4                                           "Number of spaces tab is counted for.
set shiftwidth=4                                        "Number of spaces to use for autoindent

if &co > 80
        set number                                      "Add numbers to each line
endif

set ruler                                               "Ruler (line, column and % at the right bottom)

set showcmd                                             "Show last command in the status line
set cursorline                                          "Highlight cursor line

set linebreak                                           "Soft word wrap
set display+=lastline                                   "Prettier display of long line of text


set nobackup                                            "Do not save backup files
set showmode                                            "Show the mode you are on the last line
set showmatch                                           "Show matching words during a search
set hlsearch                                            "Use highlighting when doing a search
set wildmenu                                            "Enable auto completion menu pressing Tab
set clipboard=unnamed,unnamedplus                       "Copy into system (*, +) register.




" Install vim-plug if it's not already installed.
if empty(glob('~/.vim/autoload/plug.vim'))
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.github.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin()

Plug 'gruvbox-community/gruvbox'

Plug 'vim-airline/vim-airline'

Plug 'easymotion/vim-easymotion'

Plug 'mileszs/ack.vim'

let g:plug_timeout = 300                                "Increase vim-plug timeout for YouCompleteMe
Plug 'Valloric/YouCompleteMe', {'do': './install.py'}

let g:airline_theme='gruvbox'










call plug#end()



set termguicolors

color gruvbox


