" don't wrap long lines
set nowrap

" show the '-- INSERT --' line when you're in vi insert mode
set showmode

" enable newocomplete https://github.com/Shougo/neocomplete.vim
let g:neocomplete#enable_at_startup = 1

" enable tagbar
let g:airline#extensions#tagbar#enabled = 1

" Don't fold up so tight
let javaScript_fold=0         " JavaScript

" NERDTreeIgnore is an array of regular expressions that match 
" the files you want to exclude.
let NERDTreeIgnore = ['\.pyc$']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 back to original behavior
map 0 0

" Toggle the tagbar on and off
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTree<CR>

" make the f2 button toggle paste mode so pasting doesn't auto indent
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
