let &fillchars ..= ',eob: '  " Hide tildes at end of buffer
syntax enable                " Syntax highlighting
set clipboard=unnamed        " Use clipboard when copying or pasting
set number                   " Show current line number
set relativenumber           " Show relative line numbers
set cursorline               " Highlight the line of the cursor 
set termguicolors            " Enable 24 bit colors
set spell spelllang=en_us    " Enable spellchecking

colorscheme one              " Vim one color scheme
set background=dark          " Dark version of vim one

" Search
set hlsearch                 " Highlight all matches
set ignorecase               " Searches case insensitive
set smartcase                " Except if capital letters are used
set incsearch                " Show matches while typing

" Remaps
nnoremap <Space> <Nop>
map <Space> <Leader>
inoremap jj <ESC>
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap f 1z=
nnoremap s :set spell!
vnoremap . :norm.<CR>
