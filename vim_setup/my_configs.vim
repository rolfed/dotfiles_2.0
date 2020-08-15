" let g:ale_emit_conflict_warnings = 0

"Map kj to esc
inoremap kj <Esc>
cnoremap kj <Esc>

"Set Numbers
set nu nu
set numberwidth=6

"Turn wordwrap off
set nowrap

"Tabspace
set noexpandtab
set shiftwidth=4
set tabstop=4
set shiftwidth=4
retab!
set tabstop=2
set shiftwidth=2
set expandtab
retab!

"JSDocs key map
nnoremap jsd :<C-u>call JSDocAdd()<CR>

"Find and replace highlighted text CTRL + r
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Window split
set splitbelow
set splitright

" Set Ctags
set tags+=.tags;$HOME
nmap <leader><leader> :!ctags -R -f .tags<CR>

" Coc 
nmap <F2> <Plug>(coc-rename)

" Coc Config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \]
" from readme
" " if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" Multip Cursor
let g:multi_cursor_start_word_key  = '<C-m>'
let g:multi_cursor_select_all_word_key = '<C-l>'
let g:multi_cursor_start_key   = 'g<C-l>'
let g:multi_cursor_select_all_key  = 'g<C-l>'
let g:multi_cursor_next_key    = '<C-m>'
let g:multi_cursor_prev_key    = '<C-p>'
let g:multi_cursor_skip_key    = '<C-x>'
let g:multi_cursor_quit_key    = '<Esc>'
