set nocompatible

if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

nnoremap <leader>ev :split ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>
nnoremap <Leader>l :set list!<CR>
nnoremap <Leader>n :set number!<CR>
nnoremap <Leader>p :set paste!<CR>
nnoremap <Leader>R :RainbowToggle<CR>
" Search and replace word under cursor (\*)
nnoremap <Leader>* :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
noremap <Leader>! !!$SHELL<CR>
noremap <silent><F2> :BufExplorerVerticalSplit<CR>
noremap <silent><F3> :FufFile<CR>
noremap <silent><F4> :NERDTreeToggle<CR>
nnoremap <silent><F5> :GundoToggle<CR>
noremap <silent><F6> :TagbarToggle<CR>
map <silent><F7> :setlocal spell! spelllang=en<CR>
imap <silent><F7> <ESC>:setlocal spell! spelllang=en<CR>
nnoremap <silent><F8> /\<\d\{10}\><CR>ce<C-r>=strftime("%Y%m%d00")<CR><Esc>:echo @"<CR>
nnoremap <silent><F9> :let &background = ( &background == "dark"? "light" : "dark" )<CR>
nnoremap <leader>r :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" With ':R program', open a new window and insert program output, i.e: 
"  :R find -mtime -8 | xargs grep vim
:command! -nargs=* -complete=shellcmd R new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>

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
set clipboard=""

"set modeline
"set modelines=5

syntax on
set background=dark
" set background=light
set t_Co=16

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
" set listchars=tab:▸\ ,eol:¶,trail:·,extends:»,precedes:« " Unprintable chars mapping
" set listchars=tab:▸\ ,eol:¬,trail:·,extends:»,precedes:« " Unprintable chars mapping
set listchars=tab:▸\ ,eol:↲,trail:·,extends:»,precedes:« " Unprintable chars mapping

" set nowrap		"Don't wrap lines
" set linebreak	"Wrap lines at convenient points

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

" let g:solarized_termcolors=256
" let g:solarized_termcolors=16
let g:airline_powerline_fonts=1
" let g:airline_theme = 'powerlineish'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
colorscheme solarized
highlight! link SignColumn LineNr

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

"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
" let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

let g:ale_linters = {
    \ 'sh': ['language_server'],
    \ 'go': ['golint', 'go vet'],
    \ 'python': ['flake8'],
    \ }

let g:ale_fixers = {
\   '*': ['trim_whitespace'],
\   'json': ['fixjson'],
\}

if has("autocmd")
	" Enable file type detection
	filetype on

	" Syntax of these languages is fussy over tabs Vs spaces
	autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
	autocmd FileType puppet setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

	" Customisations based on house-style (arbitrary)
	autocmd FileType sh setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
	autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
	autocmd FileType groovy setlocal ts=4 sts=4 sw=4 expandtab
	autocmd Filetype gitcommit setlocal spell textwidth=72

	autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
	" Treat .rss files as XML
	autocmd BufNewFile,BufRead *.rss setfiletype xml
	" Treat Jenkinsfile files as groovy
	autocmd BufNewFile,BufRead Jenkinsfile setfiletype groovy
endif
