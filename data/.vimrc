execute pathogen#infect()
syntax on
filetype plugin indent on


""""""""""""""""""""""""""""""""""""
" Useful features
""""""""""""""""""""""""""""""""""""
set nocompatible
set nowrap

" attempts to determine file type and indentation
if has('filetype')
    filetype indent plugin on
endif

" syntax highlighting
if has('syntax')
    syntax on
endif

" allows to switch from unsaved buffer without saving first
set hidden

" better command line completion
set wildmenu

" show partial commands in the last line of the screen
set showcmd

" highlight searches (use <C-L> to turn off highlighting - see mappings)
set hlsearch



""""""""""""""""""""""""""""""""""""
" Usability
""""""""""""""""""""""""""""""""""""

" case insensitive search, unless when using capital letters
set ignorecase
set smartcase

" allow backspacing over autoindent
set backspace=indent,eol,start

" automatic indentation
set autoindent

" stop certain movements from always going to the first character of a line
set nostartofline

" display cursor position on last line of the screen
set ruler

" always display the status line
set laststatus=2

" dialogue to save file instead of failing due to unsaved changes
set confirm

" use visual bell instead of beeping when doing something wrong
set belloff=all
set noerrorbells
set vb t_vb=

" enable mouse for all modes
if has('mouse')
    set mouse=a
endif

" set command window height to 2 lines
set cmdheight=2

" display line numbers
"set number
set relativenumber

" use <F11> to toggle 'paste' and 'nopaste' (keep indentation with autoindent)
set pastetoggle=<F11>



""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab


""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""

" map Y to yank until EOL, rather than act as yy which is default
map Y y$

" map <C-L> (redraw screen) to also turn off search highlighting until the next search
nnoremap <C-L> :nohl<CR><C-L>

" project explorer
map <C-p> :NERDTreeToggle<CR>

" tagbar explorer
nmap <F8> :TagbarToggle<CR>

" terminal shortcut
map <C-t> :terminal<CR>


" multi-cursor mapping
let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

""""""""""""""""""""""""""""""""""""
" Tweaks
""""""""""""""""""""""""""""""""""""

" open nerdtree when no file is specified
autocmd VimEnter * if !argc() | NERDTree | wincmd p | endif

" quits if NERDTree is the last and only buffer available
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

""""""""""""""""""""""""""""""""""""
" Colors
""""""""""""""""""""""""""""""""""""

" air-line theme
let g:airline_theme='wombat'

set background=dark
set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font\ 11
