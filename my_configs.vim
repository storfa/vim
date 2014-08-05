" enable newocomplete https://github.com/Shougo/neocomplete.vim
let g:neocomplete#enable_at_startup = 1

" enable tagbar
let g:airline#extensions#tagbar#enabled = 1

" don't wrap long lines
set nowrap

" make the f2 button toggle paste mode so pasting doesn't auto indent
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 back to original behavior
map 0 0

" Open NERDTree
nmap <F7> :NERDTree<CR>

" Toggle the tagbar on and off
nmap <F8> :TagbarToggle<CR>

" NERDTreeIgnore is an array of regular expressions that match 
" the files you want to exclude.
let NERDTreeIgnore = ['\.pyc$']

