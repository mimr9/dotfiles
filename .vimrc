" Start of the Vundle{{{
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
"
"Plugin 'c.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'pangloss/vim-javascript'
Plugin 'majutsushi/tagbar'
Plugin 'prabirshrestha/async.vim'
"Plugin 'ctags.vim'
"Plugin 'dsawardekar/wordpress.vim'
Plugin 'alvan/vim-closetag'
Plugin 'mattn/emmet-vim'
Plugin 'baines/vim-colorscheme-thaumaturge'
Plugin 'morhetz/gruvbox'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-buffer.vim'
Plugin 'prabirshrestha/asyncomplete-gocode.vim'
Plugin 'prabirshrestha/asyncomplete-flow.vim'
Plugin 'yami-beta/asyncomplete-omni.vim'
Plugin 'runoshun/tscompletejob'
Plugin 'prabirshrestha/asyncomplete-tscompletejob.vim'
Plugin 'prabirshrestha/asyncomplete-tags.vim'
Plugin 'keremc/asyncomplete-clang.vim'
Plugin 'maralla/completor.vim'
"Plugin 'ciaranm/inkpot'
"Plugin 'w0ng/vim-hybrid'
"Plugin 'eagletmt/ghcmod-vim'
Plugin 'vim-airline/vim-airline'

"Plugin 'chriskempson/tomorrow-theme'
"Plugin 'jnurmine/zenburn'
"Plugin 'tomasr/molokai'
"Plugin 'andymass/vim-matchup'

Plugin 'Valloric/MatchTagAlways'
"Plugin 'kien/ctrlp.vim'
Plugin 'joegesualdo/jsdoc.vim'
"Plugin 'maksimr/vim-jsbeautify'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'
"Plugin 'w0rp/ale'
Plugin 'dense-analysis/ale'
Plugin 'groenewege/vim-less'
Plugin 'shawncplus/phpcomplete.vim'
"Plugin 'valloric/youcompleteme'

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
"Plugin 'AutoComplPop'

"Plugin 'ctrlp-py-matcher'
Plugin 'ctrlp.vim'
Plugin 'vim-bookmarks'
Plugin 'michalliu/jsruntime.vim'
Plugin 'michalliu/jsoncodecs.vim'
Plugin 'michalliu/sourcebeautify.vim'
Plugin 'nginx.vim'
Plugin 'https://git.drupal.org/project/vimrc.git', {'rtp': 'bundle/vim-plugin-for-drupal/'}
Plugin 'https://github.com/evidens/vim-twig'
Plugin 'mxw/vim-jsx'
Plugin 'othree/yajs.vim'

Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/jspc.vim'

Plugin 'marijnh/tern_for_vim'

Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'carlitux/deoplete-ternjs'

Plugin 'prettier/vim-prettier'

Plugin 'davidhalter/jedi-vim'
"Plugin 'zchee/deoplete-jedi'

Plugin 'chrisbra/NrrwRgn'
Plugin 'stevearc/vim-arduino'
Plugin 'kyouryuukunn/completor-necovim'
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'
Plugin 'Shougo/deol.nvim'
Plugin 'Shougo/neoinclude.vim'
Plugin 'dikiaap/minimalist'
Plugin 'tpope/vim-unimpaired'
Plugin 'surround.vim'
Plugin 'tpope/vim-haml'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'loremipsum'
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
" End of Vundle
"}}}
"Javascript plugins settings{{{
"let g:javascript_plugin_flow = 1
"let g:jsx_ext_required = 0
"}}}
"Colorscheme settings{{{
colorscheme gruvbox
"colorscheme minimalist
"colorscheme thaumaturge
"}}}
"Key mapping special for me{{{
nnoremap nt :VimFilerExplorer -winwidth=25<CR>
nnoremap nta :NERDTree
nnoremap sh :split
nnoremap sk :vsplit
nnoremap tn :tabnext<CR>
nnoremap tp :tabprevious<CR>
nnoremap tt :tabnew<CR>
nnoremap tT :VimFilerTab<CR>
nnoremap ta :tag
nnoremap rl :set rightleft
nnoremap lr :set norightleft
nnoremap tb :TagbarToggle<CR>
nnoremap ss :Deol -split=otherwise<CR>
"}}}

"Key mapping for clipboard{{{
vmap <C-j> "+y
map <C-k> "+p 
map <A-j> 4j
map <A-k> 4k
map <A-l> zz
map <A-m> zt
map <A-a> za
map <A-f> zf
"}}}
"Extra key mapping for some nice emacs keys and fast up and down key{{{
nmap <S><CR> O<Esc>
nmap <CR> o<Esc>
"nmap <A-j> 4j
"nmap <A-k> 4k
"nmap <A-l> zz
"nmap <A-m> zt
noremap <silent> <F3> :TagbarToggle<CR>
nnoremap <Tab> <C-w>w
map <C-q> ZZ
map <S-q> :xa <CR>

autocmd FileType python :norema rr :AsyncRun -raw python3 % <CR>
let $PYTHONNUNBUFFERD = 1
autocmd FileType sh :noremap rr :AsyncRun bash % <CR>
let g:asyncrun_open = 15
"nnoremap <leader> <Tab> :tabnext
"
"}}}

"Omni complition{{{
inoremap <C-f> <C-x><C-o>
"}}}

"Basic settings for syntax and numbers{{{
syntax on
set number
set ma

set incsearch
set hlsearch
set backspace=indent,eol,start
let g:airline_powerline_fonts = 1
set akm
set completeopt=longest,menuone
set foldmethod=marker
"}}}
"File recognition for omni complete{{{
set omnifunc=syntaxcomplete#Complete
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType c set omnifunc=ccomplete#Complete
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType java set omnifunc=javacomplete#Complete
"autocmd FileType cpp set omnifunc=omni#cpp#complete#Main
"autocmd FileType javascript set formatprg=prettier\ --stdin
"autocmd BufWritePre *.js :normal gggqG}}}

"YCM completor variables{{{
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
let g:vcm_s_tab_behavior = 1
let g:completor_node_binary = '/usr/node/bin/node'
"let g:completor_clang_binary = '/usr/lib/clang/7/lib/linux/libclang_rt.dyndd-x86_64.so'
let g:completor_clang_binary = '/usr/bin/clang-7'
let g:completor_python_binary='/usr/bin/python3'
"}}}
"deoplete startup{{{
let g:deoplete#enable_at_startup = 1
"}}}
"Omni vcm tab complete settings{{{
autocmd FileType css let b:vcm_tab_complete = "omni"
autocmd FileType javascript let b:vcm_tab_complete = "omni"
autocmd FileType html let b:vcm_tab_complete = "omni"
autocmd FileType php let b:vcm_tab_complete = "omni"}}}

"Ale settings for javascript{{{
"let g:ale_fixers = {
"\    'javascript': ['eslint'],
"\    'vue': ['eslint'],
"\    'scss': ['prettier']
"\}
"}}}
"File manager some settings{{{
call vimfiler#custom#profile('default', 'context', {
        \ 'safe' : 0,
\ })
autocmd VimEnter * :VimFilerExplorer -winwidth=25
"autocmd VimEnter * :NERDTree
au VimEnter * wincmd l"}}}

"Coloring stuffs{{{
"color thaumaturge
set clipboard=unnamedplus
set cursorline
"hi CursorLine term=bold cterm=bold guibg=Grey10
hi CursorLine ctermbg=236
set encoding=utf-8
"}}}
