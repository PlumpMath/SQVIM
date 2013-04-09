"{{{ �Զ��庯��

function OpenFileLocation()  
    if ( expand("%") != "" )  
        execute "!start explorer /select, %"   
    else  
        execute "!start explorer /select, %:p:h"  
    endif  
endfunction  

"}}}

"{{{ ��������
"��¼�ļ�״̬�����������ڸ��ļ��ļ���ӳ�䡢�����۵�״̬�ȣ���
autocmd BufWinLeave *.* if expand('%') != '' && &buftype == '' | mkview | endif
autocmd BufWinEnter *.* if expand('%') != '' && &buftype == '' | silent loadview | endif
"��������mkviewʱ��ı���·������win7�������װ��C�̵Ļ����ܳ��ֱ��治�˵����
set viewdir=~/.vim/view
"��������ʱ��Ĵ�Сд
set ic
"��������leader key
let mapleader = ","
"�����ִ�Сд
set ignorecase
"����Ҫ����
set nohls
"�����������ļ�
set nobackup 
"������swp�ļ�
set noswapfile
"��Ҫͼ��ť
set go=
"��ʾ������
set go+=r
"�����к�
set number
"�����Զ�����, 7.3���ϰ汾���Զ�����
set autoindent
"�������Ϊ4���ַ�
set shiftwidth=4
"tab���Ϊ4���ַ�
set tabstop=4
"�༭ʱ������tab�滻Ϊ�ո�
set et
"��һ��Backspace��ɾ��4���ո�
set smarttab
"��ɫ����
colo desert
"�����﷨����, 7.3�汾���Զ�����
syntax on
"��������
"set guifont=courier_new:h10
set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI
"�رռ���ģʽ
set nocompatible
"��������ģ��Windows��������Ctrl-C����
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
"�����ɱ����ļ����������Ҫд��behave mswin���棬�����ǻ����ɱ��ݣ���֪Ϊ�Ρ�
set nobackup
"GVIM�ڲ�����
set encoding=utf-8
"��ǰ�༭���ļ�����
"set fileencoding=utf-8
"GVIM֧�ִ򿪵��ļ�����
set fileencodings=utf-8,gbk,gb2312,big5,latin1
set termencoding=utf-8
"����˵����Ҽ��˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"���consle�������
language messages zh_CN.utf-8
"��ֹ��������޷�������ʾ��������ǵ�
set ambiwidth=double
"�����۵���ʽ
set foldmethod=marker
"����ļ���ʱ��tab��ʾ,0��Զ����ʾ 1����������ʾ 2 ��Զ��ʾ
set showtabline=1
"set guitablabel=%{GuiTabLabel()}
set guitablabel=%t
" ����ʱ���Դ�Сд��������һ�������ϴ�д��ĸʱ�Դ�Сд����
set ignorecase
set smartcase
" �������ļ�����ʱ����������
set nowrapscan
" ʵʱ����
set incsearch
" ����ʱ������ʾ���ҵ����ı�
set hlsearch
"����ѡ��pane�е���ɫ
highlight Pmenu guifg=#FFFFFF guibg=#111111
"Ĭ��ȫ��
autocmd GUIEnter * simalt ~x
"����״̬�½��÷����
"MRU��acp��ʱ����Ҫ����ѡ��
"inoremap <up> <nop>
"inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
"��ǰ�ж�����
set cursorcolumn
"}}}
 
"{{{ �������
 
" {{{ �������Vundle
"     ��Ŀ��ַ��https://github.com/gmarik/vundle
"     ���ã�
"   
"           ��������װ
"

"required
filetype off
"�˴��涨Vundle��·��
set rtp+=$HOME/.vim/bundle/vundle
"�˴��涨����İ�װ·��
call vundle#rc('$HOME/.vim/bundle')
" let Vundle manage Vundle
Bundle 'gmarik/vundle'
" required!

"����б�
Bundle 'The-NERD-Commenter'
Bundle 'vim-scripts/L9'
"FuzzyFinder������L9
Bundle 'FuzzyFinder'
Bundle 'matchit.zip' 
Bundle 'taglist.vim'
Bundle 'restart.vim'
Bundle 'JavaScript-syntax'
Bundle 'The-NERD-tree'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'ervandew/supertab'
"Bundle 'MultipleSearch'
"ע��ע�͸ò�������ftpplugin�е�markdown�۵�����
Bundle 'plasticboy/vim-markdown'
"python �﷨��鹤�ߡ������ʹ��:cl������quickfix�����²鿴
"��������python-mode��
"Bundle 'pyflakes.vim'
"�Զ�ע�͹���
Bundle 'DoxygenToolkit.vim'
"vb �������
Bundle 'vbnet.vim'
"�Զ�������ȫ�Ի����и�bug��Ҫ�޸�һ�£�http://hi.baidu.com/_bigbug/item/c490dffedf7f4ce91b111faa
"Bundle 'AutoComplPop'
Bundle 'surround.vim'
"����к�
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
Bundle 'qianlifeng/vim-easymotion'
Bundle 'Align'
Bundle 'klen/python-mode'
Bundle 'Shougo/neocomplcache'
"snipmate related
"Bundle "MarcWeber/vim-addon-mw-utils"
"Bundle "tomtom/tlib_vim"
"Bundle "snipmate-snippets"
"Bundle "garbas/vim-snipmate"
filetype plugin indent on
"}}}
 
" {{{ �������The NERD Commenter 
"     ��Ŀ��ַ��http://www.vim.org/scripts/script.php?script_id=1218
"     Vundle��װ���ƣ�The-NERD-Commenter
"     ���ã�
"   
"           ���ڴ���ע�ͣ�����ʹ�õİ󶨿�ݼ�ͬVS
"
:nmap <C-K><C-C> <leader>c<space>
:imap <C-K><C-C> <Esc><leader>c<space>i
:nmap <C-K><C-U> <leader>c<space>
:imap <C-K><C-U> <Esc><leader>c<space>i
 
"}}}
 
" {{{ �������FuzzyFinder
"     ��Ŀ��ַ��http://www.vim.org/scripts/script.php?script_id=1984
"     Vundle��װ���ƣ�FuzzyFinder
"     ���ã�
"   
"           ������Ұ���MRUFile���ڵĸ���Ԫ��
 
"����MRUģʽ��Ĭ�Ͻ���
let g:fuf_modesDisable = []
nnoremap <silent><F1> :FufHelp<CR>
imap <silent><F1> <esc>:FufHelp<cr>  
nnoremap <silent><F2> :FufMruFile<CR>
imap <silent><F2> <esc>:FufMruFile<cr>  
nnoremap <silent><F3> :FufMruCmd<CR>
imap <silent><F3> <esc>:FufMruCmd<cr>  
"}}}
 
" {{{ �������TagList
"     ��Ŀ��ַ: http://www.vim.org/scripts/script.php?script_id=273 
"     Vundle��װ���ƣ�taglist.vim
"     ���ã�
"   
"           �����б���ʾ 

map <silent> <F10> :TlistToggle<cr>
imap <F10> <ESC>:TlistToggle<cr>a
let Tlist_Show_One_File = 1            "��ͬʱ��ʾ����ļ���tag��ֻ��ʾ��ǰ�ļ���
let Tlist_Exit_OnlyWindow = 1          "���taglist���������һ�����ڣ����˳�vim
"}}}

" {{{ �������PowerLine
"     Vundle��װ����Lokaltog/vim-powerline
"     ���ã�
"   
set laststatus=2
set encoding=utf-8
set t_Co=256
"let g:Powerline_symbols = 'fancy'
"}}}

" {{{ �������Nerd Tree
"     Vundle��װ����'The-NERD-tree'
"     ���ã�
"          ����Ŀ¼�ṹ
map <F11> :NERDTreeFind<CR>
imap <F11> <ESC>:NERDTreeFind<CR>a
"}}}

"{{{ ������֣�vbnet.vim 
autocmd BufNewFile,BufRead *.vb set ft=vbnet
"}}}

"{{{ ������֣�EasyMotion
let g:EasyMotion_do_mapping = 0
nmap <leader><leader> :call EasyMotion#WB(0,0)<CR>
"}}}

"{{{ ������֣�Python-mode
let g:pymode_lint_checker = "pyflakes"
"DO NOT Auto create and open ropeproject
"let g:pymode_rope_auto_project = 0
"}}}

let g:neocomplcache_enable_at_startup = 1 

"
"}}}
 
"{{{ ����ӳ��

"����ÿ�н�β�п��ܳ��ֵ�^M (�ļ���ʽ����)
map <C-m> :%s/\r//g<CR> 

"�ļ�����
nmap <leader>1 :set filetype=xml<cr>

"�����۵���ʽΪ�﷨�۵�ͬʱ���������۵�
map <leader>fs :set fdm=syntax<cr>zM

"�г��������
nmap <leader>f :g//<left>
"ӳ��������ݼ�
nmap <C-f> gg//g<left><left>
imap <C-f> <esc>gg//g<left><left>

"˫����������������ѡ��ĵ���
nmap <2-leftmouse> *N
imap <2-leftmouse> <esc>*N

"��Դ�������д򿪵�ǰ�ļ�
imap <F12> <ESC>:call OpenFileLocation()<CR> 
nmap <F12> :call OpenFileLocation()<CR>


"��ǰ������һ��
"����ģʽ��������ã���tab���ᴥ��������ܣ�ԭ����
"imap <C-n> <ESC>O
nmap <C-n> O<ESC>

"��ʽ��ȫ��
imap <C-K><C-D> <ESC>gg=G
nmap <C-K><C-D> gg=G

"�Զ����ӳ��ΪCtrl+J
imap <C-J> <C-X><C-O>

"Ctrl+Tab
imap <C-Tab> <ESC>gt
nmap <C-Tab> gt

"���Ƶ�ǰ�ļ�·��
nmap <F4> :let @+ = expand("%:p")<CR>

nmap <F6> :!p4 edit %<Enter>
imap <F6> <ESC>:!p4 edit %<Enter>
"******************************split setting*********************************

" Quick vertical split
nnoremap <leader>w <C-w>v

" Switch splits with <C-h> & <C-l>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" Set the minimal split width
set winwidth=40
set winminwidth=40

" Using <leader>=, toggle the width of the current split. If it's set to 999, it
" takes up as much space as possible, without pushing the other ones under 60
" columns. The other option makes sure all splits are equally wide.
function! SplitToggle()
	if(&winwidth == &winminwidth)
    set winwidth=999
	else
    set winwidth=40
    wincmd =
	endif
endfunc

nnoremap <leader>= :call SplitToggle()<cr>

"******************************************************************************

"}}}

"{{{ Python ����

autocmd FileType python set omnifunc=pythoncomplete#Complete

map <F5> <Esc>:!c:\python27\python.exe %<CR>
"}}}

"{{{ C# ����
au FileType cs set foldmethod=marker 
au FileType cs set foldmarker={,} 
au FileType cs set foldtext=substitute(getline(v:foldstart),'{.*','{...}',) 
au FileType cs set foldlevelstart=2 
"}}}
