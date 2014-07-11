set nocompatible

nnoremap <leader>ev :split ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>
nnoremap <Leader>l :set list!<CR>
nnoremap <Leader>n :set number!<CR>
nnoremap <Leader>p :set paste!<CR>
nnoremap <Leader>R :RainbowParenthesesToggle<CR>
noremap <silent><F2> :BufExplorerVerticalSplit<CR>
noremap <silent><F3> :FufFile<CR>
noremap <silent><F4> :NERDTreeToggle<CR>
nnoremap <silent><F5> :GundoToggle<CR>
noremap <silent><F6> :TagbarToggle<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set nonumber
set backspace=indent,eol,start
set history=1000
set showcmd
set noshowmode
"set gcr=a:blinkon0		"Disable cursor blink
set visualbell
set autoread			"Reload files changed outside vim
set laststatus=2
set timeoutlen=3000
set ttimeoutlen=100
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch
set matchtime=5
set splitbelow
set splitright
set hidden

"set modeline
"set modelines=5

syntax on
set background=dark

" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
"set expandtab

filetype plugin on
filetype indent on

"set listchars=tab:\ \ ,trail:·
set listchars=tab:▸\ ,eol:¶,trail:·,extends:»,precedes:« " Unprintable chars mapping

set nowrap		"Don't wrap lines
set linebreak	"Wrap lines at convenient points

set foldmethod=marker
"set foldnestmax=3		"deepest fold is 3 levels
"set nofoldenable		"dont fold by default

set wildmode=longest:list
set wildmenu
"set wildignore=*.o,*.obj,*~
"set wildignore+=*vim/backups*
"set wildignore+=tmp/**

set scrolloff=3			"Start scrolling 3 lines away from margins
set sidescrolloff=15
set sidescroll=1

let g:solarized_termcolors=256
let g:airline_powerline_fonts=1
colorscheme solarized

if has('gui_running')
	set guifont=Source\ Code\ Pro\ 12
	set lines=999 columns=999
	set number
	set list
endif

" let g:miniBufExplBRSplit = 0
let g:bufExplorerSplitBelow=0
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerVertSize=10          " New split window is n columns wide.
