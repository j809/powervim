" Enable highlighting of the current line
set cursorline

" Enable cursor at mouse click
set mouse=a

" Always display the status line
set laststatus=2

" show line numbers
set number

" manage indentation
filetype indent on
set smartindent
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" enable spell check
" set spell

" Theme and Styling
set background=dark

" italic comments
highlight Comment cterm=italic gui=italic

if (has("termguicolors"))
  set termguicolors
endif

" netrw configurations
let g:netrw_banner = 0
let g:netrw_liststyle = 1
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" open netrw by default when opening vim
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
