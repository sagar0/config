" CommandT plugin installed
" NERDTree plugin installed
" Pathogen vim plugin installed
" Sensible vim plugin installed
" Taglist plugin installed

" <leader> = \ (default)

if filereadable(expand("$HOME/.vim/autoload/pathogen.vim"))
  execute pathogen#infect()
endif

" enable syntax highlighting
syntax on

filetype plugin indent on

" don't bother with vi compatibility
set nocompatible
set autoindent
" reload files when changed on disk, i.e. via `git checkout`
set autoread
set number

" find/search settings
set ignorecase
set incsearch
set hlsearch
" (scs) don't ignore case when the search pattern has uppercase
set smartcase

"--------TABS---------

" size of a hard tabstop
set tabstop=2

" size of an "indent"
set shiftwidth=2

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=2

" always uses spaces instead of tab characters
set expandtab

"----------------------

set omnifunc=syntaxcomplete#Complete


nmap <LocalLeader>nn :NERDTreeToggle<cr>
nnoremap <silent> <F8> :TlistToggle<CR>

" ---------------------------------------------------------------------------
"  """"" Settings for taglist.vim
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=0
let Tlist_Enable_Fold_Column=0
let Tlist_Compact_Format=0
let Tlist_WinWidth=28
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close = 1
"nmap <LocalLeader>tt :Tlist<cr>

" Removes superfluous white space from the end of a line
"function! RemoveWhiteSpace()

" Copied from
" https://confluence.twitter.biz/pages/viewpage.action?pageId=40443464
augroup vimrc_autocmds
  autocmd BufEnter * highlight ExtraWhitespace ctermbg=red guibg=red
  autocmd BufEnter * call matchadd('ExtraWhitespace', '\s\+$', 11)
  autocmd BufEnter * highlight OverLength ctermbg=red guibg=red
  "autocmd BufEnter * call matchadd('OverLength', '\%>80v.\+')
augroup END
