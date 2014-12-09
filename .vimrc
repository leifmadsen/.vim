" This must be first, because it changes other options as side effect
set nocompatible
filetype off

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
" execute pathogen#infect()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'
Plugin 'Shougo/neocomplete.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()
filetype plugin indent on
 
set hidden

set nowrap        " don't wrap lines
set tabstop=2     " a tab is four spaces
set expandtab
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set nobackup
set modeline


if &t_Co >= 256 || has("gui_running")
  colorscheme molokai
  " attempt to use true 256 color scheme for molokai
  let g:rehash256 = 1
endif

if &t_Co > 2 || has("gui_running")
  " switch syntax highlighting on, when the terminal has colors
  syntax on
endif

if has('autocmd')
  autocmd FileType python set expandtab|set shiftwidth=4|set tabstop=4
  autocmd FileType html,xml set listchars-=tab:>.
  autocmd FileType ruby set expandtab|set shiftwidth=2|set tabstop=2
  autocmd FileType golang set expandtab|set shiftwidth=4|set tabstop=4
endif

set pastetoggle=<F2>
nmap <F8> :TagbarToggle<CR>

" neocomplete ----
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" ---- end neocomplete
"
" vim-go ----
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
" ---- end vim-go
"
" UltiSnips ----
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" ---- end UltiSnips
