syntax enable                  " Syntax highlighting
set spell spelllang=en_us      " Enable spellchecking
set clipboard=unnamed          " Use clipboard when copying or pasting
set termguicolors              " Enable 24 bit colors
set list                       " Shows hidden characters
set listchars=tab:▸\ ,eol:¬    " Textmate's symbols for tab and eol
set number                     " Show current line number
set relativenumber             " Show relative line numbers
set cursorline                 " Highlight the line of the cursor
set ruler                      " Shows line and column number of cursor
set laststatus=2               " Enable status line
set noshowmode                 " Don't show the current mode
set showcmd                    " Show partial command
set wildmenu                   " Enhanced command line completion
set wildmode=list:longest      " Completion mode with wildchar
set colorcolumn=80             " Color column shows lime limit
set backspace=indent,eol,start " Set backspace to behave like in OSX
set showmatch                  " Hightlight the matching bracket or brace
set visualbell                 " Enable visual bell

" Hide tildes at end of buffer
let &fillchars ..= ',eob: '

" VIM colorscheme
colorscheme one              " Vim one color scheme
set background=dark          " Dark version of vim one

" Colorscheme for lightline
let g:lightline = {
     \ 'colorscheme': 'one',
     \ }

" Indentation
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Search
set hlsearch                 " Highlight all matches
set incsearch                " Show matches while typing
set ignorecase               " Searches case insensitive
set smartcase                " Except if capital letters are used

" Substitutions
set gdefault                 " Apply substitutions globally on lines

" Remaps

" Extended Regexes
nnoremap / /\v
vnoremap / /\v

" Move to matching bracket
nnoremap <tab> %
vnoremap <tab> %

" Leader key mappings
nnoremap <Space> <Nop>
map <Space> <Leader>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>

" Remove highlighting after search
nnoremap <silent> <leader>l :nohlsearch<CR><C-L>

" Fast escaping
inoremap jj <ESC>

" Split windows
nnoremap <leader>s <C-w>v<C-w>l

" Move around split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Spelling
nnoremap f 1z=
nnoremap s :set spell!

" Repeat an action to selected lines in visual mode
vnoremap . :norm.<CR>

" Plugins

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
