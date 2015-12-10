autocmd VimEnter * wincmd p
"-----------------------SYNTASTIC LINE---------------------------------
" Enable vim-airline
set shell=bash
set laststatus=2
set ambiwidth=double
set t_Co=256
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E225'
set noshowmode
" air-line
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" airline symbols
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '|'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"-----------------------------------------------------------------------
"
"------------------------------- Vundle --------------------------------

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'honza/vim-snippets'
Plugin 'ajh17/Spacegray.vim'
call vundle#end()            " required
filetype plugin indent on    " required
"-----------------------------------------------------------------------

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-l>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"





" ---------------------- Plugin Ctrl-P ---------------------------------
set runtimepath^=~/.vim/bundle/ctrlp.vim
" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_show_hidden = 1
set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**
:let g:airline_theme='dark'
"------------------------------------------------------------------------

" ----------------------------- SET ------------------------------------
set lazyredraw          " redraw only when we need to.
set smartindent
set autoindent
set tabstop=4           " number of visual spaces per TAB
set shiftwidth=4
set softtabstop=4       " number of spaces in tab when editin
set expandtab           " tabs are spaces
set smarttab
set ai                  " auto indent
set si                  " smart indent
set cursorline          " highlight current line
set number              " Line Numbers PWN!
set cindent
set showcmd             " show command in bottom bar
set incsearch           " search as characters are entered
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
set wildmenu            " visual autocomplete for command menu 
set ignorecase          " ignore cases while searching
set smartcase 		" smarter -> useful while searching Upper Cases
set foldenable		" enable code folding
set showmatch       	" highlight matching [{()}]
set ruler		" show cursor pos
set modelines=1

"--------------------------- COLOR-SCHEME ------------------------------
if has('gui_running')
    set background=light 
    colorscheme solarized
else
    set background=dark
    "colorscheme solarized
    colorscheme spacegray
endif
"-----------------------------------------------------------------------


" ---------------------------- Key Mapping -----------------------------
" mapping kj
:imap kj <Esc>
:imap KJ <Esc>
:imap kJ <Esc>
:imap Kj <Esc>
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

:nnoremap <Space> :set hlsearch! hlsearch?<CR>
"------------------------------------------------------------------------
set pastetoggle=<F2>
"------------------------------ NerdTree -------------------------------
" Ctrl- is used to toggle the nerdtree enabling and disabling
:nnoremap <C-I> :NERDTreeToggle <CR>
:map <C-A> :NERDTreeFind <CR>
