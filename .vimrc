filetype off
"autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
"######################################################################################################################
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set shell=bash
set laststatus=2
set ambiwidth=double
set t_Co=256
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:tmuxline_powerline_separators = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set noshowmode
"##########################################################################################################################################
"HTML Editing
set matchpairs+=<:>


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Track the engine.
Plugin 'SirVer/ultisnips'
"
" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
call vundle#end()
filetype plugin indent on
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
:let g:airline_theme='dark'
" ---------------------- Plugin Ctrl-P ------------------------------------
set runtimepath^=~/.vim/bundle/ctrlp.vim
" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_show_hidden = 1
set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**
"------------------------------------------------------------------------
" ----------------------- Enable/Disable Certain Things -----------------
set lazyredraw          " redraw only when we need to.
set smartindent
set autoindent
set tabstop=4           " number of visual spaces per TAB
set shiftwidth=4
set softtabstop=4       " number of spaces in tab when editin
set expandtab           " tabs are spaces
set smarttab
set nocompatible
set expandtab
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


" smarter -> useful while searching Upper Cases
" as ignorecase is already enabled
set smartcase

" enable code folding
set foldenable

set showmatch       " highlight matching [{()}]

" show cursor pos
set ruler
execute pathogen#infect()
" direct allocate to/from system's clipboard
" instead of vim-only


"--------------------------- COLOR-SCHEME ------------------------------
if has('gui_running')
    set background=light 
    colorscheme solarized
else
    set background=dark
    colorscheme solarized
endif

"------------------------------------------------------------------------

" --------------------- key mapping ---------------------------------
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
"#########################NerdTree########################################
" Ctrl- is used to toggle the nerdtree enabling and disabling
:nnoremap <C-I> :NERDTreeToggle <CR>
:map <C-A> :NERDTreeFind <CR>




set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

set modelines=1
