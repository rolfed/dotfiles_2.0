if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" Color Theme

syntax on
" onedark.vim override: Don't set a background color when running in a terminal;
" just use the terminal's background color
" `gui` is the hex color code used in GUI mode/nvim true-color mode
" `cterm` is the color code used in 256-color mode
" `cterm16` is the color code used in 16-color mode
if (has("autocmd") && !has("gui_running"))
  augroup colorset
  autocmd!
  let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
  autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

colorscheme onedark

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

nmap <F2> <Plug>(coc-rename)
" Coc 

" Coc Config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-tslint',
  \ 'coc-angular',
  \ 'coc-sh'
  \]
" from readme
" " if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" Multip Cursor
let g:multi_cursor_start_word_key  = '<C-m>'
let g:multi_cursor_select_all_word_key = '<C-w>'
let g:multi_cursor_start_key   = 'g<C-s>'
let g:multi_cursor_select_all_key  = 'g<C-w>'
let g:multi_cursor_next_key    = '<C-n>'
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
  \ 'colorscheme': 'onedark',
  \ 'active': {
  \ 'left': [ [ 'mode', 'paste' ],
  \   [ 'readonly', 'filename' ]],
  \   },
  \   'component_function': {
  \   'filename': 'LightlineFilename'
  \   },
  \ }

" CtrlP Fuzzy Search ignore git files
let g:ctrlp_user_command = ['.git', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Ensure one newline is present a the end of any text sent to Tmux
g:tslime_ensure_trailing_newlines = 1
