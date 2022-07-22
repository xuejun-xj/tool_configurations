"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 一般配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置中文帮助
set helplang=cn

" 设置编码
set encoding=utf-8

" 设置文件默认编码
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gb2312,cp936

" 不使用 vi 的键盘模式
set nocompatible

" history 文件中需要记录的行数
set history=1000

" 未保存或只读文件退出时，需要弹出确认
set confirm

" 共享剪贴板
set clipboard+=unnamed

" 侦测文件类型
filetype on

" 载入文件类型插件
filetype plugin on

" 为特定文件类型载入相关缩进文件
filetype indent on

" 保存全局变量
set viminfo+=!

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 语法高亮
syntax on

" 颜色主题
colorscheme desert

" 高亮字符，不受 100 列限制
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
:match OverLength '\%101v.*'

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 不备份文件
" set nobackup

" 不生成 swap 文件，当 buffer 被丢弃的时候隐藏它
setlocal noswapfile
set bufhidden=hide

" 字符间插入的像素行数
set linespace=0

" 增强模式中的命令行自动完成操作
set wildmenu

" 在状态行上显示光标所在位置和行号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 命令行(在状态行下)的高度, 默认为 1
" set cmdheight=2

" 使 backspace 正常处理 indent, eol, start 等
set backspace=2

" 允许 backspace 和光标键跨越行边界
" set whichwrap+=<,>,h,l

" 可以在 buffer 的任何地方使用鼠标
set mouse=a
" set selection=exclusive
set selectmode=mouse,key

" 启动不显示提示
set shortmess=alt

" 通过使用 :commands 命令, 告诉我们文件的哪一行被改变过
" set report=0

" 不发出滴声
set noerrorbells

" 在被分割的窗口间显示空白，便于阅读
set fillchars="vert:\,stl:\,stlnc:\\"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮时间(单位是十分之一秒)
" set matchtime=5

" 在搜索的时候忽略大小写
set ignorecase

" 不要高亮被搜索的句子
" set nohlsearch

" 在搜索时，输入的词句逐字符高亮
set incsearch

" 输入 :set list 命令时显示的内容(need update)
" set listchars="tab:\|\,trail:.,extends:>,precedes:<,eol:$"

" 光标移动到 buffer 的顶部和底部时保持 3 行距离
set scrolloff=3

" 不要闪烁
set novisualbell

" 状态行显示内容
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 总是显示状态行
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式
set autoindent

" 为 C 程序提供自动缩进
set smartindent

" 使用 C 样式的缩进
set cindent

" 制表符为 4
set tabstop=4

" 同一缩进为 4
set softtabstop=4
set shiftwidth=4

" 不要用空格代替制表符
set noexpandtab

" 不要换行
" set nowrap

" 在行和段开始出使用制表符
set smarttab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags & Tlist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 按照名称排序
let Tlist_Sort_Type = "name"

" 在右侧显示窗口
let Tlist_Use_Right_Window = 1

" 压缩方式
let Tlist_Compart_Format = 1

" 如果只有一个 buffer, kill 窗口也 kill 掉 buffer
let Tlist_Exist_OnlyWindow = 1

" 不要关闭其他文件的 tags
let Tlist_File_Fold_Auto_Close = 0

" 不要显示折叠树
let Tlist_Enable_Fold_Column = 0

" Taglist 标签窗口
map <F3> :TlistToggle<CR>

let Tlist_Show_One_File=1
let Tlist_WinWidt=25

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" QuickFix
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" :cw  -  show QuickFix window
nmap <F6> :cn<CR>
nmap <F7> :cn<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Directory Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 快捷键 F2 显示目录树
map <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=25

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Other method to install plugins (use github repo)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugin 'indentLine.vim'
" Plugin 'delimitMate.vim'
" use other repos
" Plugin 'git://*******/***.git'
