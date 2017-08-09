
" when indenting with '>', use 4 spaces width
set shiftwidth=2

set softtabstop=0 noexpandtab

" show existing tab with 4 spaces width
set tabstop=2

" On pressing tab, insert 4 spaces
set expandtab


autocmd Filetype python setlocal expandtab tabstop=2 shiftwidth=2

" Copy the indentation from the previous line
set autoindent

" Automatically inserts one extra level of indentation 
" in some cases, good for C-like code
set smartindent



" VISUAL ============================== 

" Set line numbers
set nu

" Highlights the current line
set cursorline

" bold the current line
hi cursorline cterm = bold 

" highlight (background) color
hi cursorline ctermbg = 0 

	
" Use system clipboard
set clipboard=unnamedplus


execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_flake8_exec = 'python3'
let g:syntastic_python_flake8_args = ['flake8']
