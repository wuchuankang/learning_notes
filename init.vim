"配置主要参照 github.com/theniceboy/nvim

syntax on
" 让leader 键映射为空格键
let mapleader=" " 

" 当 Vim 从磁盘上读取文件的时候，会对文件的编码进行探测。如果文件的编码方式和 Vim 的内部编码方式不同，Vim 就会对编码进行转换。转换完毕后，Vim 会将 fileencoding 选项设置为文件的编码。通过打开文件后设置 fileencoding，我们可以将文件由一种编码转换为另一种编码。但是，由前面的介绍可以看出，fileencoding 是在打开文件的时候，由 Vim 进行探测后自动设置的。因此，如果出现乱码，我们无法通过在打开文件后重新设置 fileencoding 来纠正乱码。
" 编码的自动识别是通过设置 fileencodings 实现的，它是一个用逗号分隔的列表，列表中的每一项是一种编码的名称。当我们打开文件的时候，VIM 按顺序使用 fileencodings 中的编码进行尝试解码，如果成功的话，就使用该编码方式进行解码，并将 fileencoding 设置为这个值，如果失败的话，就继续试验下一个编码。
" latin1 是一种非常宽松的编码方式，任何一种编码方式得到的文本，用 latin1 进行解码，都不会发生解码失败，当然解码得到的结果自然也就是理所当然的“乱码”。
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1


set smartindent
set expandtab
set ignorecase
set smartcase
set wrap
set number
"set cursorline
set incsearch
set hlsearch
set showcmd
set wildmenu
set scrolloff=5
set tabstop=4   "使用tab键产生4个空格
set softtabstop=4   "使用回退键(backspace) 回退4个空格
set clipboard=unnamed
set cindent
set showmatch
set backspace=indent,eol,start
set shiftwidth=4
set foldmethod=indent "依据indent缩进方式折叠代码"
set foldlevel=99

" 将折叠命令改为zf，展开可以用zr，也可以zm
map zf za   
" 重新打开文件后，光标会定位在上次编的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 移动到行首：0
" 移动到行尾：$
" 移动到文本首行：gg
" 移动到文本末尾: G
" 删除光标处的字符：x
" 删除某个单词： dw
" 撤销：u
" 重做最后撤销的操作：ctrl+r
" 向前移动一个单词: w
" 向后移动一个单词：b
" 定位到行尾，并进入insert模式：shift+a
" 定位到行首，并进入insert模式：shift+h
" vscode中打开终端的快捷键是：在morm模式下，ctrl+j, 如果想要取消，则再次按下
" Ctrl+ j
" github push或者git clone要输入密码使用token，以前的密码废弃了
noremap j h
noremap i k
noremap k j
noremap h i
noremap H I
noremap J 7h
noremap I 5k
noremap K 6j
noremap L 7l
"因为 shift+k 在man命令中是来查询的，因此<来remap快速向下
noremap < 5j

map ! :q!<CR>
map s <nop>
map S :w<CR>
map Q :q<CR>
"map R :source $MYVIMRC<CR>

" 分屏
map sl :set splitright<CR>:vsplit<CR> 
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
" 用于分屏后跳转窗口
map <LEADER>j <C-w>h
map <LEADER>i <C-w>k
map <LEADER>k <C-w>j
map <LEADER>l  <C-w>l

