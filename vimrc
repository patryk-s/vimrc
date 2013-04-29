nnoremap <leader>ev :split ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>
" Shortcut to rapidly toggle `set list`
nnoremap <leader>l :set list!<CR>
nnoremap <leader>n :set number!<CR>
nnoremap <leader>p :set paste!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

set tabstop=4
set shiftwidth=4

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'ack.vim'
Bundle 'scrooloose/nerdtree.git'
Bundle 'vcscommand.vim'

filetype plugin indent on
