"
" Plugins
"
        call plug#begin('~/.local/share/nvim/plugged')

        Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
        Plug 'Xuyuanp/nerdtree-git-plugin'
        Plug 'tpope/vim-sleuth'
        Plug 'junegunn/seoul256.vim'
        Plug 'lambdalisue/suda.vim'

        call plug#end()

"
" Geral
"
        set history=1024
        set mouse=a
        set noerrorbells
        set smartcase
        set expandtab
        set smarttab

        " desativa backup
        set nobackup
        set nowritebackup
        set noswapfile

        " autocompletar comandos, pastas etc
        set wildmenu
        set wildmode=longest,list,full


"
" Aparência
"
        colorscheme seoul256
        set number
        set relativenumber
        set laststatus=2    " sempre exibe barra de status
        set cursorline      " destaca linha atual
        set showmatch       " mostra chaves, parênteses etc casados

"
" Atalhos
"
"        imap <C-c> / :TComment<CR>

        map <C-h> <C-w>h
        map <C-j> <C-w>j
        map <C-k> <C-w>k
        map <C-l> <C-w>l

"
" Inicialização
"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * call Init()

function Init()
        if argc() == 0 && !exists("s:std_in")
                NERDTree
        elseif argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in")
                exe 'NERDTree' argv()[0]
                wincmd p
                enew
        endif
endfunction

