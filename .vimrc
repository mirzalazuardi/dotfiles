set number
set fdm=indent
set hlsearch
set nocompatible              " be iMproved, required
filetype off                  " required
colorscheme gotham256
set ts=2 sw=2 et
let g:indent_guides_start_level = 2
set laststatus=2

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'whatyouhide/vim-gotham' 

Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'mattn/emmet-vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/NERDCommenter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/webapi-vim'
Plugin 'tyru/open-browser.vim' 
Plugin 'pasela/ctrlp-cdnjs'
Plugin 'netrw.vim'
Plugin 'itchyny/lightline.vim' 
Plugin 'rking/ag.vim'
Plugin 'sudo.vim'
Plugin 'maksimr/vim-jsbeautify' 
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'godlygeek/tabular'
Plugin 'mhinz/vim-signify'
Plugin 'kshenoy/vim-signature' 
Plugin 'joonty/vdebug' 
Plugin 'nginx.vim'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'aklt/plantuml-syntax'
Plugin 'elzr/vim-json'
Plugin 'airblade/vim-gitgutter'
Plugin 'sjl/gundo.vim'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'marvim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'JarrodCTaylor/vim-js2coffee'
Plugin 'kchmck/vim-coffee-script' 

call vundle#end()            " required
filetype plugin indent on    " required

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>" 
let g:UltiSnipsEditSplit="vertical"

noremap <leader>js :<c-u>CtrlPCdnJs<cr>
nmap <F8> :TagbarToggle<CR>

let g:agprg="/usr/bin/ag"
let g:ag_working_path_mode="r" 

map <c-f> :call JsBeautify()<cr>
" or
"autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
"autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
"autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

au! BufRead,BufNewFile *.json set filetype=json

augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=8
  autocmd FileType json set expandtab
  autocmd FileType json set foldmethod=syntax
augroup END

set guifont=Source\ Code\ Pro\ for\ Powerline
