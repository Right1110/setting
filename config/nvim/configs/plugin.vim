if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plug
call plug#begin('~/.vim/plugged')
  " for Vim
  if !has('nvim')
      Plug 'roxma/nvim-yarp'
      Plug 'roxma/vim-hug-neovim-rpc'
  endif
  Plug 'Shougo/neosnippet.vim'
  " color scheme
  Plug 'w0ng/vim-hybrid'
  " status line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " syntax highlight
  Plug 'derekwyatt/vim-scala', {'for': ['scala']}
  Plug 'udalov/kotlin-vim', {'for': ['kotlin']}
  Plug 'leafgarland/typescript-vim', {'for': ['typescript']}
  Plug 'neovimhaskell/haskell-vim', {'for': ['haskell']}
  Plug 'ElmCast/elm-vim', {'for': ['elm']}
  Plug 'elzr/vim-json', {'for': ['json']}
  " complete (), {}, etc
  Plug 'tpope/vim-surround'
  " highlight words
  Plug 'osyo-manga/vim-over'
  " directory tree
  Plug 'scrooloose/nerdtree'
  " comment out
  Plug 'tomtom/tcomment_vim'
  " shell commands
  Plug 'tpope/vim-eunuch'
  " paretheses
  Plug 'itchyny/vim-parenmatch'
  " incremental search in command mode
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  " git
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  " show how many searched
  Plug 'osyo-manga/vim-anzu'
  " language server protocol
  Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
  " Automated Vim session management with file auto-save and persistent undo history
  Plug 'thaerkh/vim-workspace'
  " enable repeating supported plugin maps with "."
  Plug 'tpope/vim-repeat'
  " View and search LSP symbols, tags
  Plug 'liuchengxu/vista.vim'
  " Run Async Shell Commands
  Plug 'skywind3000/asyncrun.vim'
  " A (Neo)vim plugin for formatting code.
  Plug 'sbdchd/neoformat'

call plug#end()

" PATH
let $PATH = $PATH . ':' . expand('~/.local/bin')
