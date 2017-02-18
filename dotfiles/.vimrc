set shell=/bin/sh
" Vundle
set nocompatible " Required by vundle
filetype off     " Required by vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-dispatch'

set cursorline
set ignorecase
set number
set relativenumber
set ruler
set smartcase
set title
set viminfo="NONE"
set visualbell

call pathogen#infect()
syntax on

filetype plugin indent on

syntax enable


" Solarized stuff
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized
autocmd Filetype gitcommit setlocal spell textwidth=72

" Display tabs, trailing spaces, and non-breaking space
exec "set listchars=tab:\uBB\uBB,trail:.,nbsp:\uA1"
set list

" Leaderz
let mapleader = "\<Space>"

let g:rspec_command = "Dispatch foreman run bundle exec rspec --drb %"

map <Leader>ac :sp app/controllers/application_controller.rb<CR>
map <Leader>rd :!bundle exec rspec % --format documentation<CR>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
