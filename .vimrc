let &fillchars ..= ',eob: '    " Hide tildes at end of buffer
set spell spelllang=en_us      " Enable spellchecking
syntax enable                  " Syntax highlighting
set clipboard=unnamed          " Use clipboard when copying or pasting
set termguicolors              " Enable 24 bit colors
set visualbell                 " Enable visual bell
set number                     " Show current line number
set relativenumber             " Show relative line numbers
set ruler                      " Shows line and column number of cursor
set cursorline                 " Highlight the line of the cursor
set laststatus=2               " Enable status line
set noshowmode                 " Don't show the current mode
set showcmd                    " Show partial command
set showmatch                  " Hightlight the matching bracket or brace
set list                       " Shows hidden characters
set listchars=tab:▸\ ,eol:¬    " Textmate's symbols for tab and CR
set backspace=indent,eol,start " Set backspace to behave like in OSX

" VIM colorscheme
colorscheme one              " Vim one color scheme
set background=dark          " Dark version of vim one

" Colorscheme for lightline
let g:lightline = {
     \ 'colorscheme': 'one',
     \ }

" Indentation
set autoindent

" Search
set ignorecase               " Searches case insensitive
set smartcase                " Except if capital letters are used
set hlsearch                 " Highlight all matches
set incsearch                " Show matches while typing

" Substiutions
set gdefault                 " Apply substitutions globally on lines

" Remaps

"Extended Regexes
nnoremap / /\v
vnoremap / /\v

"Move to matching bracket
nnoremap <tab> %
vnoremap <tab> %

" Remove highlighting
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" Leader key mappings
nnoremap <Space> <Nop>
map <Space> <Leader>
inoremap jj <ESC>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>

" Spelling
nnoremap f 1z=
nnoremap s :set spell!

vnoremap . :norm.<CR>
