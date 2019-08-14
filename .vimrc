execute pathogen#infect()
syntax on
filetype plugin indent on
"set background=light
"let g:solarized_termcolors=256
"colorscheme solarized
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
autocmd BufWritePre * %s/\s\+$//e
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Run a given vim command on the results of alt from a given path.
" See usage below.
function! AltCommand(path, vim_command)
  let l:alternate = system("alt " . a:path)
  if empty(l:alternate)
    echo "No alternate file for " . a:path . " exists!"
  else
    exec a:vim_command . " " . l:alternate
  endif
endfunction

" Find the alternate file for the current path and open it
nnoremap <leader>. :w<cr>:call AltCommand(expand('%'), ':e')<cr>

set colorcolumn=100
