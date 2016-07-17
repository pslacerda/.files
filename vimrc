    "
    " Geral
    "
        " miscelânea
        filetype off

        set nocompatible            " não retrocompatível com vi
        filetype plugin indent on   " detecta tipo de arquivo automaticamente
        set history=1024            " histórico de comandos longo
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
" Visual
"
    " cores
    syntax enable
    set background=dark
    colorscheme morning

    " exibição
    set number         " enumera linhas
    set relativenumber " números relativos a linha atual
    set laststatus=2   " sempre exibe barra de 'status'
    
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

    " salva arquivo com sudo 
    cmap w!! %!sudo tee > /dev/null % 

    " navegação pelas janelas
    map <c-j> <c-w>j
    map <c-k> <c-w>k
    map <c-l> <c-w>l
    map <c-h> <c-w>h

