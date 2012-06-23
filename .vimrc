runtime! debian.vim
set list
" set listchars=eol:↲,tab:▸\ 
" set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set listchars=tab:▸-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

syntax on

set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/dotfiles/neobundle.vim

  call neobundle#rc(expand('~/dotfiles/.vim/bundle'))
endif

NeoBundle 'git://github.com/Shougo/neocomplcache.git'
NeoBundle 'git://github.com/Shougo/unite.vim.git'
NeoBundle 'git://github.com/altercation/vim-colors-solarized.git'
NeoBundle 'git://github.com/tomasr/molokai.git'
NeoBundle 'git://github.com/ujihisa/neco-look.git'
NeoBundle 'git://github.com/Lokaltog/vim-powerline.git'



let g:neocomplcache_enable_at_startup = 1


" set guifont=Ricty\ for\ Powerline\ 12
" set guifont=Ricty\ for\ Powerline:h14
set guifont=Ricty\ ForPowerline:h14
let g:Powerline_symbols = 'fancy'
set t_Co=256

" set background=light
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set laststatus=2

filetype plugin on
filetype indent on



" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

