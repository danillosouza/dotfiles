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
set number

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

" open nerdtree when no file is specified
autocmd VimEnter * if !argc() | NERDTree | wincmd p | endif



""""""""""""""""""""""""""""""""""""
" Tweaks
""""""""""""""""""""""""""""""""""""

" quits if NERDTree is the last and only buffer available
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



""""""""""""""""""""""""""""""""""""
" Colors
""""""""""""""""""""""""""""""""""""

colorscheme gruvbox
set background=dark
set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font\ 11
