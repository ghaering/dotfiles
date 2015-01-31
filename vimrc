set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gamarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'wting/rust.vim'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" " non-GitHub repos
" Bundle 'git://git.wincent.com/command-t.git'
"
"
"

Bundle 'mileszs/ack.vim'
" Python and PHP Debugger
" Bundle 'fisadev/vim-debug.vim'
" Better file browser
Bundle 'scrooloose/nerdtree'
" Code commenter
"Bundle 'scrooloose/nerdcommenter'
Bundle 'tomtom/tcomment_vim'
" Class/module browser
Bundle 'majutsushi/tagbar'
" Code and files fuzzy finder
"Bundle 'kien/ctrlp.vim'
" Extension to ctrlp, for fuzzy command finder
"Bundle 'fisadev/vim-ctrlp-cmdpalette'
" Zen coding
"Bundle 'mattn/emmet-vim'
" Tab list panel
"Bundle 'kien/tabman.vim'
" Airline
"Bundle 'bling/vim-airline'
" Terminal Vim with 256 colors colorscheme
"Bundle 'fisadev/fisa-vim-colorscheme'
" Consoles as buffers
"Bundle 'rosenfeld/conque-term'
" Pending tasks list
"Bundle 'fisadev/FixedTaskList.vim'
" Surround
"Bundle 'tpope/vim-surround'
" Autoclose
"Bundle 'Townk/vim-autoclose'
" Indent text object
"Bundle 'michaeljsmith/vim-indent-object'
" Python autocompletion and documentation
"Bundle 'davidhalter/jedi-vim'
" Snippets manager (SnipMate), dependencies, and snippets repo
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'
"Bundle 'honza/vim-snippets'
"Bundle 'garbas/vim-snipmate'
" Git diff icons on the side of the file lines
"Bundle 'airblade/vim-gitgutter'
" Better python indentation
"Bundle 'vim-scripts/indentpython.vim--nianyang'
" PEP8 and python-flakes checker
Bundle 'nvie/vim-flake8'
" Search and read python documentation
"Bundle 'fs111/pydoc.vim'
" Automatically sort python imports
"Bundle 'fisadev/vim-isort'
" Relative numbering of lines (0 is the current line)
" (disabled by default because is very intrusive and can't be easily toggled
" on/off. When the plugin is present, will always activate the relative 
" numbering every time you go to normal mode. Author refuses to add a setting 
" to avoid that)
" Bundle 'myusuf3/numbers.vim'
Bundle 'vim-scripts/closetag.vim'

" Bundles from vim-scripts repos

" Autocompletion
"Bundle 'AutoComplPop'
" Python code checker
Bundle 'pyflakes.vim'
" Search results counter
"Bundle 'IndexedSearch'
" XML/HTML tags navigation
"Bundle 'matchit.zip'
" Gvim colorscheme
"Bundle 'Wombat'
" Yank history navigation
"Bundle 'YankRing.vim'

filetype plugin indent on

let mapleader=","


set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class,*.pyc,*.zip,*.gz,*.bz,*.tar
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep


set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set mouse=a

syntax on
colors torte

" put the * register on the system clipboard
set clipboard+=unnamed

set guifont=Inconsolata\ Bold\ 14

set browsedir=current " last, buffer

" Make tab in v mode work like I think it should (keep highlighting):
vmap <tab> >gv
vmap <s-tab> <gv

nnoremap <C-h>     :tabprev<CR>
nnoremap <C-l>     :tabnext<CR>
nnoremap <C-s>     :tabprev<CR>
nnoremap <C-t>     :tabnext<CR>


" allow <BkSpc> to delete line breaks, beyond the start of the current
" insertion, and over indentations:
set backspace=eol,start,indent
"
set nocompatible
set autoindent
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set virtualedit=all
set wildmenu
set guioptions=gmrtLTb

set history=1000
set undolevels=1000

let scrolloff=3

set ruler
set shortmess=atI

" Don't even bother with backup files
set nobackup
set noswapfile

set switchbuf=useopen,usetab

" Always replace *all* occurences on a line (default is only the first)
set gdefault

" Tabulator policy:
" - Show existing tabs as 4 spaces (adapt to Windoze world, yuck!)
" - Tab key/autoindent/reindent insert 4 spaces
set ts=4 sw=4 smarttab
set expandtab

" Lemme see those ugly tabs and trailing spaces
if has("gui_running")
    "set list listchars=tab:»·,trail:·
endif
" nmap <silent> <leader>s :set nolist!<CR>

" Beep? I don't want to hear any beep!!
set visualbell
set noerrorbells

let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
