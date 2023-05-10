" Configuration for matching param colors
" paran colors {{{
let g:niji_dark_colours = [
    \ [ '81', '#5fd7ff'],
    \ [ '99', '#875fff'],
    \ [ '1',  '#dc322f'],
    \ [ '76', '#5fd700'],
    \ [ '3',  '#b58900'],
    \ [ '2',  '#859900'],
    \ [ '6',  '#2aa198'],
    \ [ '4',  '#268bd2'],
    \ ]
" }}}

# Remap ESC to kj
imap kj <Esc>

" Configuration for TSlime
" tslime {{k

vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars

let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1
let g:tslime_autoset_pane = 1

" Map Ctrl-n to Nerdtree
map <C-n> :NERDTreeToggle<CR>

" Map kj to esc
inoremap kj <Esc>
cnoremap kj <Esc>

" Add New line without quotes
set formatoptions-=ro
 
" Extentions
set NERDTree
 
" 2 Space Tab
set noexpandtab
set tabstop=2
set shiftwidth=2
