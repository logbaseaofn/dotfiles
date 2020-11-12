" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  " File Explorer
  Plug 'preservim/nerdtree'
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'
  " CoC
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " More language support
  Plug 'HerringtonDarkholme/yats.vim'
  " FZF and worflow
  Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  " Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Source control
  Plug 'airblade/vim-gitgutter'
  " Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " One dark theme
  Plug 'joshdick/onedark.vim'
  " Dev Icons - must be loaded last
  Plug 'ryanoasis/vim-devicons'

call plug#end()