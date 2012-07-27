" Enable Pathogen so I get the plugins in ~/.vim/bundle
call pathogen#infect()

set nocompatible " Break backwards compatibility

" Visual prefs
syntax on
colorscheme darkspectrum
set ruler

" Be smart based on file type
filetype plugin indent on

" Tab and indent prefs
set tabstop=4 shiftwidth=4
set autoindent
" set cindent " Not so much...

" Allow buffer switching without saving
set hidden

" Things to make filesystem navigation easier
let g:netrw_liststyle=3 " Tree listings instead of flat ones
let g:netrw_list_hide='.*\.swp$,^\.DS_Store$' " Hide swap files
set nowildmenu " Ensure this is off, because it sucks
set wildmode=list:longest " Display the list of possible autocompletions

" set ignorecase " Searches are case-insensitive...
" set smartcase  " Unless they contain at least one capital letter
" ^ commented out because I don't like them after all


""""" Keymappings
let mapleader=","  " They start with ,

" Tab completion; Shift-Tab still inserts a tab.
imap <Tab> <C-P>
" word count
map <leader>w :echo system("wc -w " . expand("%"))<cr>
" Toggle line numbers
nnoremap <silent> <leader>n :set nonumber!<cr>

" Flip backspace and ^W (delete word)
inoremap <BS> <C-W>
inoremap <C-W> <BS>

""" Ruby keymappings - r
" Run tests
map <leader>rt :!bin/test<cr>
" Compile file (check syntax without running)
map <leader>rc :w\|!ruby -c %<cr>

""" Java keymappings - j
" Compile current file
map <leader>jc :w\|!javac %<cr>

""" Vim keymappings - v
" Source/load the current script (file)
map <leader>vs :w\|:source %<cr>
