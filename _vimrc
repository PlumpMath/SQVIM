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
"ӳ��yΪϵͳ���а�
nnoremap y "+y
vnoremap y "+y
"��������mkviewʱ��ı���·������win7�������װ��C�̵Ļ����ܳ��ֱ��治�˵����
set viewdir=~/.vim/view
"��������ʱ��Ĵ�Сд
set ic
"��������leader key
let mapleader = ","
"����Ҫ����
set nohls
"�����������ļ�
set nobackup 
"������swp�ļ�
set noswapfile
"��Ҫͼ��ť
set go=
"��ʾ������
set guioptions+=b
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
"GVIM֧�ִ򿪵��ļ�����
set fileencodings=utf-8,gbk,gb2312,big5,latin1
set termencoding=utf-8
"����˵����Ҽ��˵�����
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
"���consle�������
language messages zh_CN.utf-8
"��ֹ��������޷�������ʾ��������ǵ�
set ambiwidth=double
"�����۵���ʽ
"set foldmethod=marker
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
"���ò��Զ�����
:set nowrap 
"}}}
 
"{{{ �������
 
" {{{ �������Vundle
"     ��Ŀ��ַ��https://github.com/gmarik/vundle
"     ���ã�
"   
"           ��������װ
"required
filetype off
"�˴��涨Vundle��·��
set rtp+=$HOME/.vim/bundle/vundle
"�˴��涨����İ�װ·��
call vundle#rc('$HOME/.vim/bundle')
" let Vundle manage Vundle
Bundle 'gmarik/vundle'
" required!
"}}}

"����б�
Bundle 'matchit.zip' 
Bundle 'restart.vim'
Bundle 'JavaScript-syntax'
"Bundle 'terryma/vim-multiple-cursors'
"�Զ�ע�͹���
Bundle 'DoxygenToolkit.vim'
Bundle 'surround.vim'
Bundle 'Align'
"python-mode���������ٶ�
"Bundle 'klen/python-mode'
Bundle 'terryma/vim-expand-region'
Bundle 'AutoClose'
Bundle 'kchmck/vim-coffee-script'

"{{{ ctrlp
Bundle 'kien/ctrlp.vim'
"MRU default 
let g:ctrlp_map = '<leader><leader>'
let g:ctrlp_regexp = 1
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
"let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
"}}}

"{{{ color molokai
"Bundle 'tomasr/molokai'
"color molokai
"}}}

"{{{ Vim-markdown
"ע��ע�͸ò�������ftpplugin�е�markdown�۵�����
"Bundle 'plasticboy/vim-markdown'
"let g:vim_markdown_folding_disabled=1
"}}}

"{{{ Gundo �鿴�ļ��༭��ʷ
Bundle 'sjl/gundo.vim'
nnoremap <leader>h :GundoToggle<CR>    
"}}}

"{{{ syntastic �﷨��飬֧��N�����ԣ������޵���
Bundle 'scrooloose/syntastic'
let g:syntastic_auto_loc_list=1
let g:syntastic_disabled_filetypes=['html']
let g:syntastic_enable_signs=1
"��Ҫ��ǰ��װ�ø��ּ����������
"js������jshint: npm install -g jshint
"css������csslint: npm install -g csslint
"}}}

"{{{ vim-numbertoggle ����к�
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
"��Ҫ���ø���ݼ�������һ�������õ�
"let g:NumberToggleTrigger='<C-F2>'  
"}}}

"{{{ neocomplcache �Զ���ȫ
"½½�������˺ܶ��Զ���ȫ��������ǲ���ģ��ٶȺܿ�
"�������Ժ�᲻��ѡ������
"Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neocomplcache.vim'
"�Զ����ӳ��ΪCtrl+J
imap <C-J> <C-X><C-u>
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_force_overwrite_completefunc = 1
" AutoComplPop like behavior.
let g:neocomplcache_enable_auto_select = 1
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"}}}

"{{{ rainbow_parentheses ������ʾ��ǿ
Bundle 'kien/rainbow_parentheses.vim'
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
au Syntax   * RainbowParenthesesLoadRound
au Syntax   * RainbowParenthesesLoadSquare
au Syntax   * RainbowParenthesesLoadBraces
"}}}
 
" {{{ The NERD Commenter ���ڴ���ע��
" ����ʹ�õİ󶨿�ݼ�ͬVS
Bundle 'The-NERD-Commenter'
:nmap <C-K><C-C> <leader>c<space>
:imap <C-K><C-C> <Esc><leader>c<space>i
:nmap <C-K><C-U> <leader>c<space>
:imap <C-K><C-U> <Esc><leader>c<space>i
 
"}}}
 
" {{{ FuzzyFinder
Bundle 'vim-scripts/L9'
"FuzzyFinder������L9
Bundle 'FuzzyFinder'
"����MRUģʽ��Ĭ�Ͻ���
let g:fuf_modesDisable = []
nnoremap <silent><F1> :FufHelp<CR>
imap <silent><F1> <esc>:FufHelp<cr>  
nnoremap <silent><F2> :FufMruFile<CR>
imap <silent><F2> <esc>:FufMruFile<cr>  
nnoremap <silent><F3> :FufMruCmd<CR>
imap <silent><F3> <esc>:FufMruCmd<cr>  
"}}}
 
" {{{ TagList �����б���ʾ 
Bundle 'taglist.vim'
map <silent> <F10> :TlistToggle<cr>
imap <F10> <ESC>:TlistToggle<cr>a
let Tlist_Show_One_File = 1            "��ͬʱ��ʾ����ļ���tag��ֻ��ʾ��ǰ�ļ���
let Tlist_Exit_OnlyWindow = 1          "���taglist���������һ�����ڣ����˳�vim
"}}}

" {{{ PowerLine
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
set encoding=utf-8
set t_Co=256
"let g:Powerline_symbols = 'fancy'
"}}}

" {{{ Nerd Tree  ����Ŀ¼�ṹ
Bundle 'The-NERD-tree'
map <F11> :NERDTreeFind<CR>
imap <F11> <ESC>:NERDTreeFind<CR>a
"}}}

"{{{ vbnet.vim 
Bundle 'vbnet.vim'
autocmd BufNewFile,BufRead *.vb set ft=vbnet
"}}}

"{{{ EasyMotion
Bundle 'qianlifeng/vim-easymotion'
let g:EasyMotion_do_mapping = 0
"}}}

"{{{ coffee script
"Ĭ��������ʾ
"�и�������Ҫ�����ע�� ftpplugin\coffee.vim �еĵ�89��
let coffee_compile_vert = 1
au BufReadPost *.coffee silent CoffeeCompile watch vert
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
"}}}

filetype plugin indent on
"}}}

"{{{ ����ӳ��

"����ÿ�н�β�п��ܳ��ֵ�^M (�ļ���ʽ����)
map <C-m> :%s/\r//g<CR> 

"�س����Ƶ�ǰ���ʵ����а�
nmap <CR> "+yiw

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
"map <F5> <Esc>:!c:\python27\python.exe %<CR>
"}}}

"{{{ C# ����
au FileType cs set foldmethod=marker 
au FileType cs set foldmarker={,} 
au FileType cs set foldtext=substitute(getline(v:foldstart),'{.*','{...}',) 
au FileType cs set foldlevelstart=2 
"}}}
