let g:ale_emit_conflict_warnings = 0

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

" Use arrows to navigate tabs
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

" Window split
set splitbelow
set splitright

" Path
set path+=**
:set tags=./tags,tags,$HOME

" Create the 'tags' file
