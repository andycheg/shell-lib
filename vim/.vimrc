if has('vim_starting')
	set nocompatible               " Be iMproved
	set runtimepath+=~/.vim/bundle/neobundle.vim/
	set rtp+=~/Library/Python/3.3/lib/python/site-packages/powerline/bindings/vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'lokaltog/powerline'
NeoBundle 'xoria256.vim'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'kien/ctrlp.vim'

call neobundle#end()

filetype plugin indent on
NeoBundleCheck

" colorscheme darkblue
colorscheme xoria256
sy on
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
if v:version >= 703
	set colorcolumn=120
endif
set modeline
set modelines=20
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType xml imap <C-f> <Return><Backspace></<C-X><C-O>
autocmd FileType html imap <C-f> <Return><Backspace></<C-X><C-O>
nmap <C-b> :NERDTreeTabsToggle<cr>
set showmode
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set number
set laststatus=2
set encoding=utf-8
highlight Search cterm=underline
highlight NonText ctermfg=Grey
highlight SpecialKey ctermfg=Grey
set listchars=eol:¬,tab:▸-,trail:.,extends:>,precedes:<
set list
set hlsearch
set noshowmode
set showtabline=2
set backspace=2
nmap <C-n> :tabnew<cr>
nmap <C-]> :tabnext<cr>
"nmap <C-[> :tabprevious<cr>
"
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" Replace default CtrlP opening to tabs
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
