" {{{ �ļ�ͷ
" DesCRiption: vimrc for scottqian
" Last Change: 2012-10-08
" Version:     0.2.3
"}}}
 
"{{{ ��������

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
"������ʾ��ǩ��0������ʾ��1������1��ʱ��ʾ
set showtabline=0
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
set guifont=courier_new:h10
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
highlight Pmenu guifg=#FFFFFF guibg=#333333
"Ĭ��ȫ��
autocmd GUIEnter * simalt ~x
 
"}}}
 
"{{{ �������
 
" {{{ �������Vundle
"     ��Ŀ��ַ��https://github.com/gmarik/vundle
"     ���ã�
"   
"           ��������װ
"
filetype off
"�˴��涨Vundle��·��
set rtp+=$VIM/vimfiles/bundle/vundle/
"�˴��涨����İ�װ·��
call vundle#rc('$VIM/vimfiles/bundle/')
"����б�
 
Bundle 'gmarik/vundle'
Bundle 'The-NERD-Commenter'
Bundle 'https://github.com/vim-scripts/L9'
Bundle 'FuzzyFinder'
Bundle 'matchit.zip' 
Bundle 'utl.vim'
Bundle 'taglist.vim'
Bundle 'restart.vim'
"����/������tab��ȫ����
Bundle 'SearchComplete'
Bundle 'JavaScript-syntax'
"Bundle 'http://github.com/ervandew/supertab'
Bundle 'The-NERD-tree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'ervandew/supertab'
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
 
" {{{ �������Utl
"     ��Ŀ��ַ: http://www.vim.org/scripts/script.php?script_id=293
"     Vundle��װ���ƣ�Utl.vim
"     ���ã�
"   
"          ���ٴ��ı��е����ӣ���������http://��ʽ�ģ��������ļ����ӵȣ� 
 
nnoremap <silent><F10> :Utl<CR>
 
"}}}
 
" {{{ �������TagList
"     ��Ŀ��ַ: http://www.vim.org/scripts/script.php?script_id=273 
"     Vundle��װ���ƣ�taglist.vim
"     ���ã�
"   
"           �����б���ʾ 

set tags=D:\WorkProject\private\lqian\v6.1.1.0_20120724\Prodika\tags,d:\Soft\vim73-x64\tags 
map <silent> <F9> :TlistToggle<cr>
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

"����ÿ�н�β�п��ܳ��ֵ�^M (�ļ���ʽ����)
map <C-m> :%s/\r//g<CR> 
 
"{{{ ����ӳ��

"�ļ�����
nmap <leader>1 :set filetype=xml<cr>

"�����۵���ʽΪ�﷨�۵�ͬʱ���������۵�
 map <leader>fs :set fdm=syntax<cr>zM
"}}}

"{{{ Python ����

autocmd FileType python set omnifunc=pythoncomplete#Complete

map <F5> <Esc>:!c:\python27\python.exe %<CR>
"}}}
