set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

 "Plugin 'c.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'pangloss/vim-javascript'
"Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
"Plugin 'ctags.vim'
"Plugin 'dsawardekar/wordpress.vim'
Plugin 'alvan/vim-closetag'
Plugin 'mattn/emmet-vim'
Plugin 'baines/vim-colorscheme-thaumaturge'
"Plugin 'ciaranm/inkpot'
"Plugin 'w0ng/vim-hybrid'
"Plugin 'baines/vim-colorscheme-thaumaturge'
"Plugin 'eagletmt/ghcmod-vim'
Plugin 'vim-airline/vim-airline'

"Plugin 'chriskempson/tomorrow-theme'
"Plugin 'jnurmine/zenburn'
"Plugin 'tomasr/molokai'
"Plugin 'andymass/vim-matchup'

Plugin 'Valloric/MatchTagAlways'
"Plugin 'kien/ctrlp.vim'
"Plugin 'joegesualdo/jsdoc.vim'
Plugin 'pangloss/vim-javascript'
"Plugin 'maksimr/vim-jsbeautify'
"Plugin 'xolox/vim-lua-ftplugin'
"Plugin 'w0rp/ale'
"Plugin 'groenewege/vim-less'
Plugin 'shawncplus/phpcomplete.vim'
"Plugin 'valloric/youcompleteme'
"Plugin 'othree/javascript-libraries-syntax.vim'

Plugin 'tkztmk/vim-vala'
Plugin 'gtk-vim-syntax'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
" Plugin 'wesq3/vim-windowswap'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tbastos/vim-lua'
Plugin 'jiangmiao/auto-pairs'

"Plugin 'maralla/completor.vim'
"Plugin 'arm9/arm-syntax-vim'
"Plugin 'avr.vim'
Plugin 'AutoComplPop'

Plugin 'ctrlp-py-matcher'
Plugin 'ctrlp.vim'
Plugin 'vim-bookmarks'
Plugin 'michalliu/jsruntime.vim'
Plugin 'michalliu/jsoncodecs.vim'
Plugin 'michalliu/sourcebeautify.vim'
Plugin 'Yggdroot/indentLine'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

colorscheme thaumaturge
nnoremap nt :VimFilerExplorer -winwidth=25<CR>
nnoremap nta :NERDTree
nnoremap sh :split
nnoremap sk :vsplit
nnoremap tn :tabnext<CR>
nnoremap tp :tabprevious<CR>
nnoremap tt :tabnew<CR>
nnoremap ta :tag
nnoremap rl :set rightleft
nnoremap lr :set norightleft
nnoremap tb :TagbarToggle<CR>

vmap m "+y
map f "+p

nmap <S><CR> O<Esc>
nmap <CR> o<Esc>

inoremap <C-f> <C-x><C-o>

syntax on
set number
:set ma

set incsearch
set hlsearch
set backspace=indent,eol,start
let g:airline_powerline_fonts = 1
:set akm
set omnifunc=syntaxcomplete#Complete

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType cpp set omnifunc=omni#cpp#complete#Main
autocmd FileType javascript set formatprg=prettier\ --stdin
autocmd BufWritePre *.js :normal gggqG

set completeopt=longest,menuone
 "set foldmethod=syntax

let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
let g:vcm_s_tab_behavior = 1
let g:completor_node_binary = '/usr/node/bin/node'
let g:completor_clang_binary = '/usr/lib/clang/6.0/lib/linux/libclang_rt.dyndd-x86_64.so'

autocmd FileType css let b:vcm_tab_complete = "omni"
autocmd FileType javascript let b:vcm_tab_complete = "omni"
autocmd FileType html let b:vcm_tab_complete = "omni"
autocmd FileType php let b:vcm_tab_complete = "omni"
noremap <silent> <F3> :TagbarToggle<CR>
nnoremap <Tab> <C-w>w
"nnoremap <leader> <Tab> :tabnext

" Enable file operation commands.
" Edit file by tabedit.
call vimfiler#custom#profile('default', 'context', {
        \ 'safe' : 0,
\ })
autocmd VimEnter * :VimFilerExplorer -winwidth=25
"autocmd VimEnter * :NERDTree
set clipboard=unnamedplus

au VimEnter * wincmd l
