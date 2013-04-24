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

    " visual
    Bundle 'vim-scripts/wombat256.vim'
    Bundle 'Lokaltog/powerline'

    " etcétera
    Bundle 'ervandew/supertab'
    Bundle 'tomtom/tcomment_vim'

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
" Visual
"
    " cores
    syntax enable
    set background=dark
    colorscheme wombat256mod

    " exibição
    set number        " enumera linhas
    set laststatus=2  " sempre exibe barra de 'status'
    set shortmess+=I  " não exibe mensagem de boas vindas
    
    " destaques
    set cursorline  " destaca linha atual
    set showmatch   " mostra chaves (ou parênteses...) casados

"
" Atalhos
"
    imap jj <Esc>

    " comentários
    imap <C-c> <Esc>:TComment<CR>
    vnoremap <C-c> :TComment<CR>
    
    " salva arquivo com sudo 
    cmap w!! %!sudo tee > /dev/null % 

