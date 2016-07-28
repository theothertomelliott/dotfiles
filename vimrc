:so ~/dotfiles/vim/plugins.vim
colorscheme molokai

let g:molokai_original = 1

" Automatically save buffers on running make
set autowrite

set nocompatible              " be iMproved, required
filetype on                  " required

set backspace=2 " Make backspace work like most other apps

set number
set mouse=a

syntax on
filetype plugin indent on

" Tagbar settings
nmap <F8> :TagbarToggle<CR>

" vim-statline settings
let g:statline_fugitive = 1
let g:statline_filename_relative = 1
let g:statline_show_charcode = 1
let g:statline_show_encoding = 0

" vim-go settings
let g:go_fmt_command = "goimports"

au FileType go nmap <Leader>b :call GoSyntaxCheck()<CR>
au FileType go nmap <Leader>r <Plug>(go-run)
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>cc <Plug>(go-callers)
au FileType go nmap <Leader>ii <Plug>(go-info)
au FileType go nmap <Leader>df <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-vertical)
au FileType go nmap <Leader>de <Plug>(go-def-tab)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:syntastic_aggregate_errors = 1

" Requires jq: https://stedolan.github.io/jq/
com! FormatJSON %!jq '.'

let g:vim_json_syntax_conceal = 0

set completeopt-=preview
" Autoenable neocomplete: https://github.com/Shougo/neocomplete.vim
" Requires vim with lua: brew install vim --with-lua
let g:neocomplete#enable_at_startup = 1

function! GoSyntaxCheck()
	if (match(expand("%"), "test") != -1)
		:GoTestCompile
	else
	        :GoBuild
	endif
endfunction


" Toggle NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>
" Something else for NERDTree (lookup what it does)
autocmd StdinReadPre * let s:std_in=1
" Automatically open NERDTree if launched without a buffer
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Automatically close Vim if NERDTree is the only open tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
