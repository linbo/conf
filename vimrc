set nocompatible
syntax on
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
filetype off

filetype plugin indent on
autocmd FileType python setlocal et sta sw=4 sts=4

set foldmethod=indent
colorscheme desert

" for zen-coding
let g:user_zen_expandabbr_key = '<c-a>'
let g:use_zen_complete_tag = 1

" Tlist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

call pathogen#infect()

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


"vundle manage vundle
Bundle 'gmarik/vundle'


Bundle 'jedi-vim'
let g:jedi#popup_on_dot = 0
let g:jedi#show_function_definition = "0"


Bundle 'ctrlp.vim'

"用全新的方式在文档中高效的移动光标，革命性的突破
Bundle 'EasyMotion'
let g:EasyMotion_leader_key = ','

Bundle 'UltiSnips'


Bundle 'vim-markdown'

let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4


let g:syntastic_python_checkers=['pylint']
