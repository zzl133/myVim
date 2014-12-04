set number                  " 显示行号  
set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4  
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格  
set tabstop=4               " 设定 tab 长度为 4  
set cindent                 " C yufa
filetype plugin on   " 开启插件  

set nocompatible
filetype off

"********************************************************
"安装vundle
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
"

"nerdtree 生成工程目录树
Plugin 'git@github.com:scrooloose/nerdtree.git'

"tagbar 类似Taglist,生成函数、变量列表
Plugin 'git@github.com:majutsushi/tagbar.git'

"ultisnips 类似TextMate的snippets
Plugin 'git@github.com:SirVer/ultisnips.git'

"delimitMate 成对生成(),{},[]
Plugin 'git@github.com:Raimondi/delimitMate.git'

"supertab 让tab键可以飞起来。
Plugin 'git@github.com:ervandew/supertab.git'

"neocomplcache.vim 关键字补全、文件路径补全、tag补全等等，各种，非常好用，速度超快。
Plugin 'git@github.com:Shougo/neocomplcache.vim.git'

"TagHighlight 根据生成的Tag文件，高亮类、变量、函数和关键字。
Plugin 'git@github.com:magic-dot-files/TagHighlight.git'


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
"

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"NERDTree Settings{
	let NERDTreeWinPos = "left"
	map <F4> :silent! NERDTreeToggle<CR> 
"}

"tarbar Settings{
	nmap <Leader>tb :TagbarToggle<CR>
	let g:tagbar_ctags_bin='/usr/bin/ctags'
	let g:tagbar_width=30
	autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
"}

"supertab Settings{
	let g:SuperTabDefaultCompletionType="context"
"}

"neocomplcache Settings{
	let g:neocomplcache_enable_at_startup = 1
"}

"delimitMate Settings{
	let loadad_delimitMate = 1
	au FileType mail let b:loaded_delimitMate = 1
	let delimitMate_matchpairs = "(:),[:],{:},<:>"
	au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:},<:>"
"}

