"-- AIRLINE CONFIG
let g:airline_powerline_fonts=1

"-- NERDTree CONFIG
nnoremap <C-t> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeRespectWildIgnore=1
set wildignore+=*.DS_Store,*.min.*
let g:webdevicons_enable_nerdtree=1
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Refresh the tree after a write, a shell command, a return to vim, or a move into the tree.
augroup nerdtree_refresh
  autocmd!
  autocmd BufWritePost,FileWritePost,ShellCmdPost,FocusGained * silent! NERDTreeRefreshRoot
  autocmd BufEnter NERD_tree_* silent! NERDTreeRefreshRoot
augroup END

"-- NERD COMMENTER CONFIG
let g:NERDSpaceDelims=1          " a space after the comment sign: '# x', not '#x'
let g:NERDDefaultAlign='left'    " comment signs in one column
let g:NERDTrimTrailingWhitespace=1

"-- FZF CONFIG
nnoremap <C-p> :Files<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>b :Buffers<CR>

"-- POLYGLOT CONFIG

"-- COC CONFIG
let g:coc_global_extensions = ['coc-pairs']
set updatetime=300
" Enter confirms the selected item; otherwise newline (coc#on_enter expands pairs)
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
      \ : "\<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>"
" Tab / Shift-Tab move in the menu
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <silent><expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
