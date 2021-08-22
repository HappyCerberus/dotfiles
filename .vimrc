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

noremap <Tab> :tabnext<CR>
noremap <S-Tab> :tabprevious<CR>

set rtp+=$POWERLINE_PATH/bindings/vim
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTree | endif

