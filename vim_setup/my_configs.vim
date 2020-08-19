" let g:ale_emit_conflict_warnings = 0

"Map kj to esc
inoremap kj <Esc>
cnoremap kj <Esc>

"Set Numbers
set nu rnu
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

" Add Neovim-Ruby-Host
let g:ruby_host_prog = '~/.rbenv/versions/2.7.1/bin/neovim-ruby-host'

" NerdTree ignore Node Modules
let g:NERDTreeIgnore = ['node_modules$']

" Open NerdTree in the left
let g:NERDTreeWinPos = "left"

" Bind Ctrl-n to open nerd tree
nmap <C-n> :NERDTreeToggle<CR>

" Lightline configuration
let g:lightline = {
  \ 'colorscheme': 'seoul256',
  \ 'active': {
  \ 'left': [ [ 'mode', 'paste' ],
  \   [ 'readonly', 'filename' ]],
  \   },
  \   'component_function': {
  \   'filename': 'LightlineFilename'
  \   },
  \ }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()    
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
  NERDTreeFind
  wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
" autocmd BufEnter * call SyncTree()

" CtrlP Fuzzy Search ignore git files
let g:ctrlp_user_command = ['.git', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
