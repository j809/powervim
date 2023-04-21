" gruvbox colorscheme
colorscheme gruvbox

" enable italic for gruvbox
let g:gruvbox_italic = 1

" enable gruvbox theme for vim-airline
let g:airline_theme = 'gruvbox' 

" enable directory icons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" enable deoplete
let g:deoplete#enable_at_startup = 1
let g:on_insert_enter = 1

" enable vim-airline symbols
let g:airline_powerline_fonts = 1

" deoplete color change
highlight Pmenu ctermbg=8 guibg=#606060
highlight PmenuSel ctermbg=1 guifg=#606060 guibg=#d6d6d6
highlight PmenuSbar ctermbg=0 guibg=#d6d6d6

" auto-format
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
" auto-format on save/exiting insert mode
au BufWrite * :Autoformat
au InsertLeave * :w
au InsertLeave * :Autoformat

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_autoclose_preview_window_after_completion = 1

" clang-complete
" let g:clang_library_path='/usr/lib/x86_64-linux-gnu/libclang-8.so.1'

" show hidden files/directories in NERDTree
let NERDTreeShowHidden = 1
" quit vim if only NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDCommenter
let g:NERDSpaceDelims = 1

" toggle preview window
function! PreviewWindowOpened()
    for nr in range(1, winnr('$'))
        if getwinvar(nr, "&pvw") == 1
            " found a preview
            return 1
        endif
    endfor
    return 0
endfunction

" FZF Ag customization
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

" FZF Rg customization
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
