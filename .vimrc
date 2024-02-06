syntax enable                           " Syntax highlighting
set termguicolors                       " Enable 24 bit colors
set list                                " Shows hidden characters
set listchars=tab:▸\ ,eol:¬             " Textmate's symbols for tab and eol
set number                              " Show current line number
set relativenumber                      " Show relative line numbers
set cursorline                          " Highlight the line of the cursor
set ruler                               " Line and column number of cursor
set laststatus=2                        " Enable status line
set noshowmode                          " Don't show the current mode
set showcmd                             " Show partial command
set wildmenu                            " Enhanced command line completion
set wildmode=list:longest               " Completion mode with wildchar
set colorcolumn=80                      " Color column shows line limit
set backspace=indent,eol,start          " Set backspace to behave like in OSX
set showmatch                           " Hightlight the matching bracket
set visualbell                          " Enable visual bell

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

" Colorscheme for lightline
let g:lightline = {
     \ 'colorscheme': 'one',
     \ }

" Spellcheking colors
hi clear SpellBad
hi SpellBad ctermfg=015 ctermbg=009 guifg=#ffffff guibg=#ff0000

" Indentation
set autoindent
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Search
set hlsearch                 " Highlight all matches
set incsearch                " Show matches while typing
set ignorecase               " Searches case insensitive
set smartcase                " Except if capital letters are used

" Spellchecking for Markdown Files
augroup markdown
  autocmd!
  autocmd FileType markdown setlocal spell
augroup END

" Remaps

" Move to matching bracket
nnoremap <tab> %
vnoremap <tab> %

" Leader key mappings
map <Space> <Leader>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>

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

" Source VIM config file
nnoremap <leader>v :source $MYVIMRC<CR>

" Repeat an action to selected lines in visual mode
vnoremap . :norm.<CR>

" Plugins

" Emmet
let g:user_emmet_install_global = 0
augroup emmet
 autocmd!
 autocmd FileType html,css EmmetInstall
augroup END
