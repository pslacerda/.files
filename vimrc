"
" Plugins Vundle
"
    " prólogo
    filetype off
    set runtimepath+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'

    " sintaxes
    Bundle 'HubLot/vim-gromacs'
    Bundle 'PotatoesMaster/i3-vim-syntax'
    Bundle 'tpope/vim-markdown'

    " python
    Bundle 'davidhalter/jedi-vim'

    " visual
    Bundle 'vim-scripts/wombat256.vim'
    
    " etcétera
    Bundle 'tomtom/tcomment_vim'
    Bundle 'scrooloose/nerdtree'
    Bundle 'fholgado/minibufexpl.vim'
    " Bundle 'kien/ctrlp.vim'

"
" Geral
"
    " miscelânea
    set nocompatible            " não retrocompatível com vi
    filetype plugin indent on   " detecta tipo de arquivo automaticamente
    set history=256             " histórico de comandos longo
    set mouse=a                 " habilita mouse em todos os modos
    set noerrorbells            " nada de zuada

    " desativa backup 
    set nobackup
    set nowritebackup
    set noswapfile
    
    " busca
    set hlsearch    " realça busca
    set smartcase   " busca sensitiva a caixa quando possui letra maiúscula

    " identação
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab
    set smarttab
    
    " tecla backspace funciona 'normalmente'
    set backspace=indent
    set backspace+=eol
    set backspace+=start
    
    " autocompletar comandos
    set wildmenu
    set wildmode=longest,list,full
    
"
" Navegação
"
    " " ctrlp
    " let g:ctrlp_working_path_mode = 'ra' 
    
    " NERDTree
    map <F2> :NERDTreeToggle<CR>
    autocmd vimenter * if !argc() | NERDTree | endif
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"
" Visual
"
    " cores
    syntax enable
    set background=dark
    colorscheme wombat256mod

    " exibição
    set number        " enumera linhas
    set laststatus=2  " sempre exibe barra de 'status'
    
    " destaques
    set cursorline  " destaca linha atual
    set showmatch   " mostra chaves (ou parênteses...) casados

    " statusline
    set statusline=
    set statusline+=%<\                  " espaço no início
    set statusline+=%2*[%n%M%R%W]%*\     " flags e nº do buffer
    set statusline+=%-40f\               " path
    set statusline+=%=%1*%y%*%*\         " tipo de arquivo
    set statusline+=%10((%l,%c)%)\       " linhas e colunas
    set statusline+=%P                   " porcentagem do arquivo

"
" Atalhos
"
    imap jj <Esc>

    " alterna comentários
    imap <C-c> <Esc>:TComment<CR>
    noremap <C-c> :TComment<CR>

    " salva arquivo com sudo 
    cmap w!! %!sudo tee > /dev/null % 

    " navegação pelas janelas
    map <c-j> <c-w>j
    map <c-k> <c-w>k
    map <c-l> <c-w>l
    map <c-h> <c-w>h
 
    " movimentação acelerada
    noremap <M-l> 4l
    noremap <M-h> 4h
    noremap <M-j> 4j
    noremap <M-k> 4k

