execute pathogen#infect()
syntax on
filetype plugin indent on
"set background=light
"let g:solarized_termcolors=256
" colorscheme solarized
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|circleci'
"let g:ctrlp_working_path_mode = 0
let mapleader = ","
let g:netrw_sizestyle= "h"
"let g:airline_section_b = ''
"let g:airline_section_z = '%b'
let g:airline_powerline_fonts = 1
set tags=./tags;,tags;

" otherwise Typescript highlighting is slow
set re=0

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
nnoremap gd :e %:p:h<cr>
nnoremap gt :A<cr>

autocmd FileType ruby nmap <silent> t<C-m> <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <silent> t<C-m> <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <silent> t<C-m> <Plug>(xmpfilter-mark)

autocmd FileType ruby nmap <silent> t<C-r> <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <silent> t<C-r> <Plug>(xmpfilter-run)
autocmd FileType ruby imap <silent> t<C-r> <Plug>(xmpfilter-run)

let test#vim#term_position = "belowright"
let test#strategy = "basic"
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
nmap <silent> <C-s> :source ~/.vimrc<CR>

nnoremap <silent> <leader>gr :w<Return> :Dispatch ruby %:p<Return>
nnoremap <silent> <leader>tr :Executioner<Return>
nnoremap <silent> <leader>hr :w<Return> :ExecutionerHorizontalBuffer<Return><C-w>r
nnoremap <silent> <leader>vr :w<Return> :ExecutionerVerticalBuffer<Return><C-w>l

"command Eh e %:p:h/$1
" Ruby hash formatting
nnoremap <C-h> $v%lohc<CR><CR><Up><C-r>"<Esc>:s/,/,\r/g<CR>:'[,']norm ==<CR>

" set colorcolumn=100
set number
set notermguicolors

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:rails_projections = {
      \  "app/controllers/*_controller.rb": {
      \      "test": [
      \        "spec/requests/{}_spec.rb",
      \        "spec/controllers/{}_controller_spec.rb",
      \        "test/controllers/{}_controller_test.rb"
      \      ],
      \      "alternate": [
      \        "spec/requests/{}_spec.rb",
      \        "spec/controllers/{}_controller_spec.rb",
      \        "test/controllers/{}_controller_test.rb"
      \      ],
      \   },
      \   "spec/requests/*_spec.rb": {
      \      "command": "request",
      \      "alternate": "app/controllers/{}_controller.rb",
      \      "template": "require 'rails_helper'\n\n" .
      \        "RSpec.describe '{}' do\nend",
      \   },
      \ }
