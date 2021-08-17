set encoding=utf-8
set fileencoding=utf-8

execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
colorscheme nord

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

set colorcolumn=80

" Powerline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

" Display white characters
set list
set listchars=tab:▶\ ,eol:★
set listchars+=trail:◥
set listchars+=extends:❯    "Should be a >
set listchars+=precedes:❮    "Should be a <

"vertical splits less gap between bars
set fillchars+=vert:│

" Setup persistent undo file
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

