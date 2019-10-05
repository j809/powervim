call plug#begin('~/.config/nvim/plugged')

" NERDTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Auto-completion framework - deoplete
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" C++ auto-completion
Plug 'Valloric/YouCompleteMe'

" C++ auto-completion
" Plug 'xavierd/clang_complete'

" Comment shortcuts support
Plug 'scrooloose/nerdcommenter' 

" vim-preview
Plug 'skywind3000/vim-preview'

" Auto-format on save
Plug 'Chiel92/vim-autoformat'

" Auto closing bracket
Plug 'jiangmiao/auto-pairs'

" Syntax highlighting
" Plug 'vim-syntastic/syntastic'

" Default templates
Plug 'aperezdc/vim-template'

" gruvbox color scheme
Plug 'morhetz/gruvbox'

" vim colorschemes
Plug 'flazz/vim-colorschemes'

" for devicons (used by nerdtree)
Plug 'ryanoasis/vim-devicons'

call plug#end()
