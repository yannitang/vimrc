set nocompatible
set encoding=utf-8
packadd! justify " justify text in visual mode with '_j'
filetype on
syntax on
set mouse=a
set number
set relativenumber
set spelllang+=cjk
set autoindent
set smartindent
set hlsearch
"set incsearch
set ignorecase
set smartcase
set tabstop=4
set shiftwidth=4
set textwidth=78
set formatoptions+=mM
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd BufRead *.css setlocal ts=2 sts=2 sw=2 expandtab
autocmd BufRead *.json setlocal ts=2 sts=2 sw=2 expandtab
autocmd BufRead *.vue setlocal ts=2 sts=2 sw=2 expandtab
autocmd BufRead *.wxml setlocal ts=2 sts=2 sw=2 expandtab
autocmd BufRead *.wxss setlocal ts=2 sts=2 sw=2 expandtab
set autoindent 
filetype plugin indent on
"set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')
	Plug 'VundleVim/Vundle.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'lervag/vimtex'
	Plug 'Valloric/YouCompleteMe'
	" Track the engine.
	Plug 'SirVer/ultisnips'
	" Snippets are separated from the engine. Add this if you want them:
	Plug 'honza/vim-snippets'
	Plug 'vim-latex/vim-latex'
	Plug 'tmhedberg/SimpylFold'
	Plug 'benmills/vimux'
	Plug 'tpope/vim-surround'
	Plug 'scrooloose/nerdcommenter'
	Plug 'scrooloose/nerdtree'
	Plug 'flazz/vim-colorschemes'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'Raimondi/delimitMate'
	Plug 'junegunn/vim-easy-align'
	Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
	"Plug 'groenewege/vim-less'
	Plug 'pangloss/vim-javascript'
	Plug 'gregsexton/MatchTag'
	Plug 'kien/ctrlp.vim'
	Plug 'majutsushi/tagbar'
	Plug 'plasticboy/vim-markdown'
	Plug 'rakr/vim-one'
	Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
call plug#end()
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:vimtex_compiler_latexmk		   = {'callback' : 0}
let g:Tex_CustomTemplateDirectory	   = '/home/wy/Documents/tex/template'
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit			   = "vertical"
let g:ycm_global_ycm_extra_conf		   = '/home/wy/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
" make sure your keys with compatable
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger     = '<C-k>'
"let g:ycm_key_list_select_completion   = ['<Enter>', '<C-n>', '<Down>']
let g:ycm_key_list_select_completion   = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_server_python_interpreter    = 'python3'

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

augroup markdownSpell
    autocmd!
"    autocmd FileType markdown setlocal spell
"    autocmd BufRead,BufNewFile *.tex,*.txt setlocal spell
    autocmd BufRead,BufNewFile *.tex setlocal spell
augroup END

colorscheme atom

"Ctrl+N 打开/关闭
"map <C-n> :NERDTreeToggle<CR>
" 当不带参数打开Vim时自动加载项目树
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 当所有文件关闭时关闭项目树窗格
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&
"b:NERDTreeType == "primary") | q | endif
" 不显示这些文件
"let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules', '\.aux$', '\.bbl$', '\.blg$', '\.thm$', '\.toc$', '\.pdf$', '\.out$', '\figures$[[dir]]'] "ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules', '\.aux$', '\.bbl$', '\.blg$', '\.thm$', '\.toc$', '\.out$'] "ignore files in NERDTree
" 不显示项目树上额外的信息，例如帮助、提示什么的
"let NERDTreeMinimalUI=1
 let g:NERDTreeWinSize = 20

 " Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
"let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
"let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
"let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
"let g:NERDToggleCheckAllLines = 1

nmap <F8> :TagbarToggle<CR>

" if has("gui_running")
	" if has("gui_gtk2")
	" :set guifont=Luxi\ Mono\ 14
	" :set colorscheme sand
	" elseif has("x11")
	" " Also for GTK 1
	" :set guifont=*-lucidatypewriter-medium-r-normal-*-*-180-*-*-m-*-*
	" elseif has("gui_win32")
	" :set guifont=Luxi_Mono:h12:cANSI
	" endif
" endif
"
if has("gui_running")
	:set guifont=Luxi\ Mono\ 14
	:colorscheme atomw
endif

nnoremap <leader>yg : YcmCompleter GoTo<CR>
nnoremap <leader>yf : YcmCompleter FixIt<CR>

vmap <Enter> <Plug>(EasyAlign)
