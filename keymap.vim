let mapleader = ","

" yank/put
noremap <silent> <leader>y "+y
noremap <silent> <leader>p "+p
noremap <silent> <leader>d "+d

" close all
noremap <silent> <leader>c :qa<CR>

" close
noremap <silent> <c-x> :q<CR>

" split
noremap <leader>v :vsplit<CR>
noremap <leader>h :split<CR>

" clear search highlighting till next search when ESC pressed
nnoremap <silent> <esc> :noh<return><esc>

" shift+arrow selection
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

" Toggle NERDTree
noremap <silent> <leader>ne :NERDTree<CR>
noremap <silent> <leader>nem :NERDTreeMirror<CR>

" Manage explore (netrw)
noremap <silent> <leader>x :Explore<CR>
noremap <silent> <leader>xv :Vexplore<CR>
noremap <silent> <leader>xs :Sexplore<CR>

" File Management
noremap <silent> <leader>f :FZF<CR>
noremap <silent> <c-o> :Files<CR>
noremap <silent> <c-a> :History<CR>
noremap <silent> <c-f> :Ag<CR>
noremap <silent> <c-g> :Commits<CR>

" auto-format
noremap <c-l> :Autoformat<CR>

" c++ compile and run
noremap <silent> <c-b> :w <CR> :!g++ % -o %< && ./%< <CR>
" c++ comment
map <C-_> <Plug>NERDCommenterToggle

" keymap help
noremap <silent> <expr> <c-h> PreviewWindowOpened() ? "\:PreviewClose<CR>" : "\:PreviewFile ~/.config/nvim/help/cheatsheet.txt<CR>"

" tab completion using deoplete
" noremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
