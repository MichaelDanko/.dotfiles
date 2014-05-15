" Mike's Vim Configuration File
" Description: Optimized for C/C++ Development
" Author: Michael Danko (@madanko)
"
" Pathogen
"execute pathogen#infect()

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" configure tabwidth and insert spaces instead of tabs
set tabstop=2		" tab width is 2 spaces
set shiftwidth=2	" indent with 2 spaces
set expandtab		" expand tabs to spaces

" wrap lines at 80 chars.
"au BufRead * let &numberwidth = float2nr(log10(line("$"))) + 2 
"\| let &columns = &numberwidth + 80

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" turn syntax highlighting on
"set t_Co=256
syntax on
"colorscheme hemisu

" turn line numbers on
set number

" highlight matching braces
set showmatch

"intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

filetype plugin indent on

" Remap Escape Keys
inoremap jj <Esc>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
syn on
