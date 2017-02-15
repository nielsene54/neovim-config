call plug#begin('~/.config/nvim/plugged')
Plug 'neomake/neomake'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'Mizuchi/vim-ranger' "Oh shit I replaced nerdtree!
Plug 'Valloric/MatchTagAlways'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'derekwyatt/vim-scala'
Plug 'kien/rainbow_parentheses.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-airline/vim-airline'
Plug 'Valloric/MatchTagAlways'
Plug 'alvan/vim-closetag'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'vim-scripts/Gundo'
Plug 'neovim/node-host', { 'do': 'npm install' }
Plug 'vimlab/mdown.vim', { 'do': 'npm install' }
Plug 'kien/rainbow_parentheses.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'edma2/vim-pants'
Plug 'solarnz/thrift.vim'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'xolox/vim-misc'
call plug#end()
set number

"Indentation
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"Shows blank lines and spaces
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

"Delete trailing whitespaces upon write
autocmd BufWritePre * :%s/\s\+$//e

" Switching between tabs inside Vim
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

"CtrlP settings
let g:ctrlp_custom_ignore= 'node_modules\|target\|amps-standalone\|bower_components\|*.pyc\|.pants.d'
let g:ctrlp_show_hidden = 1
nnoremap <leader>. :CtrlPTag<cr>

"TagBar settings
nnoremap ,b :TagbarToggle<CR>

"Settings for Gundo
nnoremap <F5> :GundoToggle<CR>
let g:gundo_width = 60
let g:gundo_preview_height = 40
let g:gundo_right = 1

" Use deoplete
let g:deoplete#enable_at_startup = 1
" Neomake on save
autocmd! BufWritePost * Neomake

" ranger
" Open a file in a new tab using the ranger add-on
nnoremap <f9> :tabe %:p:h<cr>
" Open file browser (in this case ranger) in new tab
map <leader>n :tabe <C-R>=expand("%:p:h") . "/" <CR>
map ,s :split <C-R>=expand("%:p:h") . "/" <CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set t_Co=256
syntax on    "syntax highlighting
filetype on  "try to detect filetype
set background=dark
colorscheme distinguished
