execute pathogen#infect()
syntax on
filetype plugin indent on
"set background=light
"let g:solarized_termcolors=256
"colorscheme solarized
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|circleci'
"let g:ctrlp_working_path_mode = 0
let mapleader = ","
let g:netrw_sizestyle= "h"
let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']
" let g:airline_section_b = ''
" let g:airline_section_z = '%b'
set tags=./tags;,tags;

autocmd BufWritePre * %s/\s\+$//e
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

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

" Navigate tabs with the option key
nnoremap Ń 1gt
nnoremap ™ 2gt
nnoremap € 3gt
nnoremap ß 4gt
nnoremap į 5gt
nnoremap § 6gt
nnoremap ¶ 7gt
nnoremap • 8gt
nnoremap Ľ 9gt

" Find the alternate file for the current path and open it
nnoremap <leader>. :w<cr>:call AltCommand(expand('%'), ':e')<cr>
nnoremap <C-p> :Files<cr>
nnoremap <C-r> :Rg<cr>
nnoremap <C-g> :Rg <c-r>=expand("<cword>")<cr><cr>
nnoremap c<C-e> :cd ~/Development/system/apps/shedul-umbrella<cr>
nnoremap gd :e %:p:h<cr>

let test#vim#term_position = "belowright"
let test#strategy = "dispatch"
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

"command Eh e %:p:h/$1

set colorcolumn=100
set number
