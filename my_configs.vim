" don't wrap long lines
set nowrap

" show the '-- INSERT --' line when you're in vi insert mode
set showmode

" use spaces by default
set expandtab
set tabstop=2

" enable newocomplete https://github.com/Shougo/neocomplete.vim
let g:neocomplete#enable_at_startup = 1

" enable tagbar
let g:airline#extensions#tagbar#enabled = 1

" Don't fold up so tight on start
setl foldlevelstart=2

" NERDTreeIgnore is an array of regular expressions that match 
" the files you want to exclude.
let NERDTreeIgnore = ['\.pyc$']

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => general mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 back to original behavior
map 0 0

" Toggle the tagbar on and off
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>

" make the f2 button toggle paste mode so pasting doesn't auto indent
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-go plugin settings/mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show a list of interfaces which is implemented by the type under your cursor with <leader>s
au FileType go nmap <Leader>s <Plug>(go-implements)

" Show type info for the word under your cursor with <leader>i (useful if you have disabled 
" auto showing type info via g:go_auto_type_info)
au FileType go nmap <Leader>i <Plug>(go-info)

" Open the relevant Godoc for the word under the cursor with <leader>gd or open it vertically 
" with <leader>gv
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

" Or open the Godoc in browser
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

" Run commands, such as go run with <leader>r for the current file 
au FileType go nmap <leader>r <Plug>(go-run)

" go build and go test for the current package with <leader>b and <leader>t. 
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)

" Display a beautiful annotated source code to see which functions are covered with <leader>c.
au FileType go nmap <leader>c <Plug>(go-coverage)

" Replace gd (Goto Declaration) for the word under your cursor (replaces current buffer):
au FileType go nmap gd <Plug>(go-def)

" Or open the definition/declaration in a new vertical, horizontal or tab for the word under your cursor:
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" Rename the identifier under the cursor to a new name
au FileType go nmap <Leader>e <Plug>(go-rename)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => minibufexpl plugin settings/mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader><Tab> :bn<CR>
let g:miniBufExplUseSingleClick = 1 "Change buffer with single click on a buffer
"let g:miniBufExplMapCTabSwitchBufs = 1 "Map control-tab and control-shift-tab for switching between buffers
"let g:miniBufExplModSelTarget = 1 "If you use other explorers like TagList you can (As of 6.2.8) put:
"let g:miniBufExplTabWrap = 1 " make tabs show complete (no broken on two lines)
"let g:miniBufExplMaxSize = 1 " <max lines: defualt 0> setting this to 0 will mean the window gets as big as needed to fit all your buffers.


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Color Schemes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme molokai
