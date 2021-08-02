" Dein init
if &compatible
  set nocompatible " Be iMproved
endif
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim/
call dein#begin(expand('~/.vim/bundles/'))
  " Let dein manage dein
  call dein#add(expand('~/.vim/bundles/repos/github.com/Shougo/dein.vim'))

  call dein#add('morhetz/gruvbox')
"  call dein#add('neozenith/estilo-xoria256')
  call dein#add('vim-airline/vim-airline')

call dein#end()

if dein#check_install()
  call dein#install()
endif

" VIM Temporary directories settings 
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/

" Airline options
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


filetype plugin indent on
sy on

" Indentation settings
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set softtabstop=-1

" 120 symbols ruler
if v:version >= 703
  set colorcolumn=120
endif

" Show line numbers
set number

" Check edited files for modeline 
set modeline
set modelines=20

" XML/HTML settings
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType xml imap <C-f> <Return><Backspace></<C-X><C-O>
autocmd FileType html imap <C-f> <Return><Backspace></<C-X><C-O>
let g:xml_syntax_folding=1
autocmd FileType xml setlocal foldmethod=syntax

autocmd FileType vim set expandtab
autocmd FileType vim set tabstop=2
autocmd FileType vim set shiftwidth=2

set showmode " always show what mode we're currently editing in
set laststatus=2 " always show statusline
set encoding=utf-8

" Search highlighting
highlight Search cterm=underline
set hlsearch

" Colorscheme
set background=dark
" autocmd vimenter * ++nested colorscheme gruvbox
" colorscheme xoria256
" highlight NonText ctermfg=Grey
" highlight SpecialKey ctermfg=Grey
colorscheme gruvbox

" Show special chars
set listchars=eol:¬,tab:▸-,trail:.,extends:>,precedes:<
set list

" Working with tabs
set showtabline=2 " Always show vim tabs line
nmap <C-n> :tabnew<cr>
nmap <C-]> :tabnext<cr>
"nmap <C-[> :tabprevious<cr>


set backspace=indent,eol,start " Allow backspacing through auto-indent, eol, insert starting in INSERT MODE 

" Replace default CtrlP opening to tabs
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
