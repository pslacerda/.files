"
" Vundle Plugins
"
filetype off
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'gmarik/vim-markdown'
Bundle 'ervandew/supertab'
Bundle 'tomtom/tcomment_vim'
Bundle 'vim-scripts/wombat256.vim'
Bundle 'xoria256.vim'
Bundle 'Townk/vim-autoclose'

filetype plugin indent on " automatically detect file types


"
" General
"
set nocompatible        " be iMproved
set history=256         " remember a lot
set mouse=a

set nobackup        " disable backup files
set nowritebackup   " 
set noswapfile      " 

set hlsearch    " highlight search
set smartcase   " be case sensitive when input has capital letter
set incsearch   " show matches while typing

"
" Omnicompletion
"
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
set omnifunc=syntaxcomplete#Complete
highlight Pmenu guibg=brown gui=bold
set completeopt=menuone,longest,preview


"
" Formatting
"
set nowrap      " don't wrap lines by default
set textwidth=0 " 

set tabstop=4       " set identation to four characters
set softtabstop=4   " 
set shiftwidth=4    " 
set expandtab       " replace tabs with `tabstop` spaces
set smarttab        " 

set backspace=indent
set backspace+=eol
set backspace+=start


"
" Visual
"
syntax enable
set background=dark
colorscheme xoria256

set number        " show line numbers
set cursorline    " highlight current line
set laststatus=2  " aways show status line
set shortmess+=I  " don't show intro message when starting Vim

set showmatch   " show matching brackets
set matchtime=2 " bracket blinking

set wildmode=longest  " at command line, complete longest common string
set wildmode+=list    " then list alternatives

set noerrorbells  " no noise


"
" Shortcuts
"
map <C>c :TComent<CR>
imap jj <Esc>



