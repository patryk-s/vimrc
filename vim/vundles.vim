filetype off	" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'ericbn/vim-solarized'
Plugin 'mhinz/vim-startify'
Plugin 'mhinz/vim-signify'
Plugin 'bling/vim-bufferline'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic.git'

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" Plugin 'ludovicchabant/vim-lawrencium'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'bufexplorer.zip'
Plugin 'luochen1990/rainbow'
" Plugin 'mileszs/ack.vim'
Plugin 'jremmen/vim-ripgrep'
Plugin 'sjl/gundo.vim'
let g:gundo_prefer_python3 = 1
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vcscommand.vim'
Plugin 'splitjoin.vim'
Plugin 'fatih/vim-go'
Plugin 'diepm/vim-rest-console'
Plugin 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'rust-lang/rust.vim'
let g:rustfmt_autosave = 1
Plugin 'w0rp/ale'
let g:ale_lint_on_text_changed = 'never'
Plugin 'google/vim-jsonnet'
Plugin 'christianrondeau/vim-base64'
Plugin 'andrewstuart/vim-kubernetes'
Plugin 'junegunn/vim-easy-align'
Plugin 'mzlogin/vim-markdown-toc'
let g:vmt_auto_update_on_save = 0

Plugin 'scrooloose/nerdcommenter'
" tComment
Plugin 'tComment'
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" only use git
let g:signify_vcs_list = [ 'git' ]
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabDefaultCompletionType = "context"

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" vim-go settings
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1

"CTags
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
