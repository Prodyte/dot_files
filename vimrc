" plugin setup
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

colorscheme gruvbox
set bg=dark

set number

set pastetoggle=<F2>
set clipboard=unnamed

set mouse=a

let mapleader = ","

"QuicKSave
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

"quit
noremap <Leader>e :quit<CR> " quit current
noremap <Leader>E :qa!<CR> " quit all windows

"navigate tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"sort code
vnoremap <Leader>s :sort<CR>

"moving block of code
vnoremap < <gv
vnoremap > >gv

"show whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
