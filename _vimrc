" {{{ �ļ�ͷ
" DesCRiption: vimrc for scottqian
" Last Change: 2012-11-15
" Version:     0.2.3
"}}}

"{{{ �Զ��庯��

function OpenFileLocation()  
    if ( expand("%") != "" )  
        execute "!start explorer /select, %"   
    else  
        execute "!start explorer /select, %:p:h"  
    endif  
endfunction  

"
" �޸ı�ǩҳ�ı���
" set up tab labels with tab number, buffer name, number of windows
"
function GuiTabLabel()
  let label = ''
  let bufnrlist = tabpagebuflist(v:lnum)
  " Add '+' if one of the buffers in the tab page is modified
  for bufnr in bufnrlist
    if getbufvar(bufnr, "&modified")
      let label = '+'
      break
    endif
  endfor
  " Append the tab number
  let label .= v:lnum.': '
  " Append the buffer name
  let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
  if name == ''
    " give a name to no-name documents
    if &buftype=='quickfix'
      let name = '[Quickfix List]'
    else
      let name = '[No Name]'
    endif
  else
    " get only the file name
    let name = fnamemodify(name,":t")
  endif
  let label .= name
  " Append the number of windows in the tab page
  let wincount = tabpagewinnr(v:lnum, '$')
  return label . '  [' . wincount . ']'
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
Bundle 'MultipleSearch'
"ע��ע�͸ò�������ftpplugin�е�markdown�۵�����
Bundle 'plasticboy/vim-markdown'
"ע���޸Ĳ��ģ���ļ��������Ĭ���ļ���ģ��
"���jquery.js��html-crc-reload.js �Ա�������Զ�ˢ��
"<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js" ></script>
"<script type="text/javascript" src="https://raw.github.com/qianlifeng/SQVIM/master/html-crc-reload.js"></script>
Bundle 'waylan/vim-markdown-extra-preview'
"python �﷨��鹤�ߡ������ʹ��:cl������quickfix�����²鿴
Bundle 'pyflakes.vim'
"�Զ�ע�͹���
Bundle 'DoxygenToolkit.vim'
"����Ƭ�ι���
Bundle 'drmingdrmer/xptemplate'
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

"{{{ ������֣�vim-markdown-extra-preview
au BufWritePost,InsertLeave *.md Mer
"}}}

"{{{ ������֣�DoxygenToolkit
let g:doxygenToolkit_authorName="Scott Qian"
let g:doxygenToolkit_briefTag_funcName="yes"
"}}}

"{{{ ������֣�XPTemplate 
"�����supertab��Ч��
"let g:xptemplate_key = '<Tab>'
"}}}
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
nmap <2-leftmouse> *Nvw
imap <2-leftmouse> <esc>*Nvw
"�����������
nmap <leader><leader> :nohlsearch<CR>

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
"}}}

"{{{ Python ����

autocmd FileType python set omnifunc=pythoncomplete#Complete

map <F5> <Esc>:!c:\python27\python.exe %<CR>
"}}}
