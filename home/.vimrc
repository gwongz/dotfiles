" =============================================================================
" " VIM-PLUG BLOCK {{{
" =============================================================================

silent! if plug#begin('~/.vim/plugged')
" Colors
Plug 'junegunn/seoul256.vim'
Plug 'tomasr/molokai'
Plug 'chriskempson/vim-tomorrow-theme'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'

" Browsing
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mkitt/tabline.vim'
" Languages
Plug 'groenewege/vim-less'
Plug 'kchmck/vim-coffee-script'
Plug 'plasticboy/vim-markdown'

" Comments
Plug 'scrooloose/nerdcommenter'

" Linters
Plug 'ntpeters/vim-better-whitespace'
Plug 'Chiel92/vim-autoformat'

call plug#end()
endif
" }}}
" =============================================================================
" " BASIC SETTINGS {{{
" =============================================================================
let mapleader = ' '

"set autoindent
set smartindent
set copyindent
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
"set smarttab "insert tabs on start of line based on shiftwidth
set encoding=utf-8
set synmaxcol=1000
set expandtab
" set tab width based on filetype
autocmd filetype javascript set softtabstop=2 shiftwidth=2 expandtab
autocmd filetype html set softtabstop=2 shiftwidth=2 expandtab
autocmd filetype python set expandtab

" yank text into system clipboard
set clipboard=unnamedplus
" 80 chars/line
set textwidth=0
set colorcolumn=80

" disable backups
set noswapfile
set nobackup

" git gutter symbols
silent! if emoji#available()
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')
endif

" emoji completion
set completefunc=emoji#complete


" seoul256 (dark):
"   Range: 233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 236
colo seoul256

" vim-better-whitespace highlighting"
highlight ExtraWhitespace ctermbg=52
"
" yapf settings
let g:formatdef_yapf = "'yapf --style ~/src/clefy/clef/instant2fa/.style.yapf  -l '. a:firstline . '-' . a:lastline"
" autoformat on save
"au BufWrite * :Autoformat
"
" }}}
" =============================================================================
" " MAPPINGS {{{
" =============================================================================

" Edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Toggle NerdTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>
" Map jj to escape in insert mode
:inoremap jj <Esc>
" Toggle CtrlP with Ctrl+p
let g:ctrl_map = '<C-p>'
