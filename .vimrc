
" when indenting with '>', use 4 spaces width
set shiftwidth=4   

set softtabstop=4

" show existing tab with 4 spaces width
set tabstop=4

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
