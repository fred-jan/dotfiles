" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase	

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * if &filetype !=# 'gitcommit' && &filetype !=# 'gitrebase' | NERDTree | endif | wincmd p

function! OpenFern()
  execute "Fern . -reveal=" . expand("%") . " -drawer -width=35 -toggle"
endfunction

" Autostart Fern and put cursor back in other window
autocmd VimEnter * nested if &filetype !=# 'gitcommit' && &filetype !=# 'gitrebase' | call OpenFern() | endif | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

set guifont=Hack\ Nerd\ Font\ Mono:h11

let g:airline_powerline_fonts = 1

" Enable Nerd Font in Fern for rendering file type icons
let g:fern#renderer = "nerdfont"

let g:fern#default_hidden=1

" Activate glyph-palette plugin for Fer
autocmd FileType fern call glyph_palette#apply()
autocmd FileType fern set nonumber

" Decrease update time from 4s to 0.1 to observe git status changes faster
set updatetime=100

" Enable FZF preview window
let g:fzf_preview_window = ['right,50%', 'ctrl-/']

command! -bang -nargs=? -complete=dir HFiles
  \ call fzf#vim#files(<q-args>, {'source': 'ag --hidden --ignore .git -g ""'}, <bang>0)

" key bindings
nmap <silent> <C-t> :Tags<CR>
nmap <silent> <C-a> :Files<CR>
" Search in Git-versioned files
nmap <silent> <C-g> :GFiles<CR>
" nmap <silent> <C-h> :History<CR>
" Search line in current file
nmap <silent> <C-f> :BLines<CR>
nmap <F12> :TagbarToggle<CR>
nmap <C-F12> :BTags<CR>

" window shortcuts
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

colorscheme darcula

set splitbelow
set termwinsize=10x0
