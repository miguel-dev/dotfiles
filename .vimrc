syntax enable                           " Syntax highlighting
set termguicolors                       " 24 bit colors
set belloff=all                         " Turn off all bells
set list                                " Hidden characters
set listchars=tab:▸\ ,eol:¬             " Textmate's symbols for tab and eol
set history=200                         " Keep 200 commands or search patterns
set relativenumber                      " Relative line numbers
set cursorline                          " Highlight cursor line
set laststatus=2                        " Enable status line
set showcmd                             " Partial command
set wildmenu                            " Enhanced command line completion
set colorcolumn=80                      " Color column shows line limit
set backspace=indent,eol,start          " OSX's like Backspace
set showmatch                           " Hightlight the matching bracket
set ttimeout
set ttimeoutlen=100                     " Quicker Esc

" Status Line
set statusline=
set statusline+=%#PmenuSel#
set statusline+=\ %{gitbranch#name()}
set statusline+=\ %#LineNr#
set statusline+=\ %f
set statusline+=\ %L
set statusline+=\ %#CursorColumn#
set statusline+=\%M
set statusline+=%#LineNr#
set statusline+=\ %R
set statusline+=%=
set statusline+=%#PmenuSel#
set statusline+=\ %Y
set statusline+=\ %#LineNr#
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %{&fileformat}
set statusline+=\ %#CursorColumn#
set statusline+=\%p%%
set statusline+=\ %l:%c
set statusline+=\ 

" Persistent Undo
if !isdirectory($HOME."/.vim")
call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir
set undofile

" Hide tildes at end of buffer
let &fillchars ..= ',eob: '

" VIM colorscheme
colorscheme one              " Vim one color scheme
set background=dark          " Dark version of vim one

" Spellcheking
hi SpellBad cterm=underline

" Indentation
filetype plugin indent on
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Search
set hlsearch                 " Highlight all matches
set incsearch                " Show matches while typing
set ignorecase               " Searches case insensitive
set smartcase                " Except if capital letters are used

" Matchit plugin
packadd! matchit

" Remaps

" Leader key mapping
map <Space> <Leader>

" Write to file
nnoremap <Leader>w :w<CR>

" Copy to clipboard and paste from it
nnoremap <Leader>y "*y<CR>
nnoremap <Leader>p "*p<CR>

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

" Open .vimrc file in a split
nnoremap <leader>e <C-w><C-v><C-l>:e $MYVIMRC<CR>

" Repeat an action to selected lines in visual mode
vnoremap . :norm.<CR>

" Plugins

" Emmet
let g:user_emmet_install_global = 0
augroup emmet
 autocmd!
 autocmd FileType html,css EmmetInstall
augroup END
