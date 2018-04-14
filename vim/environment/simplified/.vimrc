" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
" debian.vim

"------------------------------------------------------------------------------
" plugin install plugin
"------------------------------------------------------------------------------
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" tree explore plugin
Plug 'Xuyuanp/nerdtree-git-plugin'"

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" best auto complete tool I have ever used(jedi, supertab...)
Plug 'Valloric/YouCompleteMe'

" Initialize plugin system
call plug#end()

set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"let Vundle manage Vundle
Bundle 'gmarik/vundle'
"my Bundle here:
"
" original repos on github
Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'sjl/gundo.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'klen/python-mode'
Bundle 'Valloric/ListToggle'
Bundle 'SirVer/ultisnips'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 't9md/vim-quickhl'
" Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdcommenter'
Bundle 'majutsushi/tagbar'
"..................................
" vim-scripts repos
Bundle 'YankRing.vim'
Bundle 'vcscommand.vim'
Bundle 'ShowPairs'
Bundle 'SudoEdit.vim'
Bundle 'EasyGrep'
Bundle 'VOoM'
Bundle 'VimIM'
"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................
call vundle#end()
filetype plugin indent on


" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'. Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
set nocompatible


" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  "have Vim load indentation rules and plugins according to the detected filetype
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.

"set ignorecase        " 搜索模式里忽略大小写
"set smartcase        " 如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用。
"set smartindent        " 智能对齐方式
set softtabstop=4     " 设置软制表符的宽度    
set cindent            " 使用 C/C++ 语言的自动缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s     "设置C/C++语言的具体缩进方式
"set backspace=2    " 设置退格键可用
set showmatch        " 设置匹配模式，显示匹配的括号
set linebreak        " 整词换行
set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
"set hidden " Hide buffers when they are abandoned
set number            " Enable line number    "显示行号
"set previewwindow    " 标识预览窗口


"--状态行设置--
set laststatus=2 " 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
set ruler           " 标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。

"--命令行设置--
"set showcmd         " 命令行显示输入的命令
set showmode        " 命令行显示vim当前模式

"set textwidth=80

"--find setting--
"set incsearch       " 输入字符串就显示匹配点
"set hlsearch

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"highlight OverLength ctermbg=yellow ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" au BufWinEnter * if &textwidth > 8
"             \ | let w:m1=matchadd('MatchParen', printf('\%%<%dv.\%%>%dv', &textwidth+1, &textwidth-8), -1)
"             \ | let w:m2=matchadd('ErrorMsg', printf('\%%>%dv.\+', &textwidth), -1)
"             \ | endif





"===================================================================================
"         FILE:  .vimrc
"  DESCRIPTION:  suggestion for a personal configuration file ~/.vimrc
"       AUTHOR:  Dr.-Ing. Fritz Mehner
"      CREATED:  04.04.2009
"     REVISION:  $Id: customization.vimrc,v 1.5 2009/04/04 08:26:21 mehner Exp $
"===================================================================================
"
"===================================================================================
" GENERAL SETTINGS
"===================================================================================

"-------------------------------------------------------------------------------
" Use Vim settings, rather then Vi settings.
" This must be first, because it changes other options as a side effect.
"-------------------------------------------------------------------------------
set nocompatible
"
"-------------------------------------------------------------------------------
" Enable file type detection. Use the default filetype settings.
" Also load indent files, to automatically do language-dependent indenting.
"-------------------------------------------------------------------------------
filetype  on
filetype  plugin on
filetype  indent on
"
"-------------------------------------------------------------------------------
" Switch syntax highlighting on.
"-------------------------------------------------------------------------------
syntax    on
"
" Platform specific items:
" - central backup directory (has to be created)
" - default dictionary
" Uncomment your choice.
if  has("win16") || has("win32")     || has("win64") || 
  \ has("win95") || has("win32unix")
    "
"    runtime mswin.vim
"    set backupdir =$VIM\vimfiles\backupdir
"    set dictionary=$VIM\vimfiles\wordlists/german.list
else
"    set backupdir =$HOME/.vim.backupdir
"    set dictionary=$HOME/.vim/wordlists/german.list
endif
"
" Using a backupdir under UNIX/Linux: you may want to include a line similar to
"   find  $HOME/.vim.backupdir -name "*" -type f -mtime +60 -exec rm -f {} \;
" in one of your shell startup files (e.g. $HOME/.profile)
"
"-------------------------------------------------------------------------------
" Various settings
"-------------------------------------------------------------------------------
set autoindent                  " copy indent from current line
set autoread                    " read open files again when changed outside Vim
set autowrite                   " write a modified buffer on each :next , ...
set backspace=indent,eol,start  " backspacing over everything in insert mode
set backup                      " keep a backup file
set browsedir=current           " which directory to use for the file browser
set complete+=k                 " scan the files given with the 'dictionary' option
set history=50                  " keep 50 lines of command line history
set hlsearch                    " highlight the last used search pattern
set incsearch                   " do incremental searching
set listchars=tab:>.,eol:\$     " strings to use in 'list' mode
"set mouse=a                     " enable the use of the mouse
"set nowrap                      " do not wrap lines
set popt=left:8pc,right:3pc     " print options
set ruler                       " show the cursor position all the time
set showcmd                     " display incomplete commands
set smartindent                 " smart autoindenting when starting a new line
"set visualbell                  " visual bell instead of beeping
set wildignore=*.bak,*.o,*.e,*~ " wildmenu: ignore these extensions
set wildmenu                    " command-line completion in an enhanced mode
"
"===================================================================================
" BUFFERS, WINDOWS
"===================================================================================
"
"-------------------------------------------------------------------------------
" The current directory is the directory of the file in the current window.
"-------------------------------------------------------------------------------
if has("autocmd")
  autocmd BufEnter * :lchdir %:p:h
endif
"
"-------------------------------------------------------------------------------
" close window (conflicts with the KDE setting for calling the process manager)
"-------------------------------------------------------------------------------
 noremap  <C-Esc>       :close<CR>
inoremap  <C-Esc>  <C-C>:close<CR>
"
"-------------------------------------------------------------------------------
" Fast switching between buffers
" The current buffer will be saved before switching to the next one.
" Choose :bprevious or :bnext
"-------------------------------------------------------------------------------
 noremap  <silent> <s-tab>       :if &modifiable && !&readonly && 
     \                      &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
inoremap  <silent> <s-tab>  <C-C>:if &modifiable && !&readonly && 
     \                      &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
"
"-------------------------------------------------------------------------------
" Leave the editor with Ctrl-q (KDE): Write all changed buffers and exit Vim
"-------------------------------------------------------------------------------
nnoremap  <C-q>    :wqall<CR>
"
"-------------------------------------------------------------------------------
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
"-------------------------------------------------------------------------------
if has("autocmd")
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif " has("autocmd")
"
"-------------------------------------------------------------------------------
"  some additional hot keys
"-------------------------------------------------------------------------------
"    F2   -  write file without confirmation
"    F3   -  call file explorer Ex
"    F4   -  show tag under curser in the preview window (tagfile must exist!)
"    F5   -  open quickfix error window
"    F6   -  close quickfix error window
"    F7   -  display previous error
"    F8   -  display next error   
"-------------------------------------------------------------------------------
"
"map   <silent> <F2>        :write<CR>
"map   <silent> <F3>        :Explore<CR>
"nmap  <silent> <F4>        :exe ":ptag ".expand("<cword>")<CR>
map   <silent> <F5>        :copen<CR>
map   <silent> <F6>        :cclose<CR>
map   <silent> <F7>        :cp<CR>
map   <silent> <F8>        :cn<CR>
"
"imap  <silent> <F2>   <Esc>:write<CR>
"imap  <silent> <F3>   <Esc>:Explore<CR>
"imap  <silent> <F4>   <Esc>:exe ":ptag ".expand("<cword>")<CR>
imap  <silent> <F5>   <Esc>:copen<CR>
imap  <silent> <F6>   <Esc>:cclose<CR>
imap  <silent> <F7>   <Esc>:cp<CR>
imap  <silent> <F8>   <Esc>:cn<CR>
"
"-------------------------------------------------------------------------------
" Fast switching between buffers
" The current buffer will be saved before switching to the next one.
" Choose :bprevious or :bnext
"-------------------------------------------------------------------------------
"
 map  <silent> <s-tab>  <Esc>:if &modifiable && !&readonly && 
     \                  &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
imap  <silent> <s-tab>  <Esc>:if &modifiable && !&readonly && 
     \                  &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
"
"-------------------------------------------------------------------------------
" Leave the editor with Ctrl-q : Write all changed buffers and exit Vim
"-------------------------------------------------------------------------------
nmap  <C-q>    :wqa<CR>
"
"-------------------------------------------------------------------------------
" autocomplete parenthesis, brackets and braces
"-------------------------------------------------------------------------------
"inoremap ( ()<Left>
"inoremap [ []<Left>
"inoremap { {}<Left>
"
"vnoremap ( s()<Esc>P<Right>%
"vnoremap [ s[]<Esc>P<Right>%
"vnoremap { s{}<Esc>P<Right>%
"
"-------------------------------------------------------------------------------
" autocomplete quotes (visual and select mode)
"-------------------------------------------------------------------------------
"xnoremap  '  s''<Esc>P<Right>
"xnoremap  "  s""<Esc>P<Right>
"xnoremap  `  s``<Esc>P<Right>
"
"-------------------------------------------------------------------------------
" Change the working directory to the directory containing the current file
"-------------------------------------------------------------------------------
if has("autocmd")
  autocmd BufEnter * :lchdir %:p:h
endif " has("autocmd")
"
"===================================================================================
" VARIOUS PLUGIN CONFIGURATIONS
"===================================================================================
"
"-------------------------------------------------------------------------------
" c.vim
"-------------------------------------------------------------------------------
"
" --empty --
"


"------------------------------------------------------------------------------
" Tag list
" taglist.vim : toggle the taglist window
" taglist.vim : define the title texts for make
" taglist.vim : define the title texts for qmake
"------------------------------------------------------------------------------
 noremap <silent> <F11>  <Esc><Esc>:Tlist<CR>
inoremap <silent> <F11>  <Esc><Esc>:Tlist<CR>

let tlist_make_settings  = 'make;m:makros;t:targets'
let tlist_qmake_settings = 'qmake;t:SystemVariables'
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File=1

if has("autocmd")
  " ----------  qmake : set filetype for *.pro  ----------
  autocmd BufNewFile,BufRead *.pro  set filetype=qmake
endif " has("autocmd")

let tlist_template_settings  = 'template;t:template'


"---------------------------------------------------------------
" plugin templates : set filetype for *.template  
"---------------------------------------------------------------
if has("autocmd")
  autocmd BufNewFile,BufRead Templates  set filetype=template
  autocmd BufNewFile,BufRead *.template  set filetype=template
endif " has("autocmd")


"------------------------------------------------------------------------------
"pydiction
"------------------------------------------------------------------------------
"filetype plugin pydiction off
"let g:pydiction_location = '~/.vim/plugin/pydiction/complete-dict'
"let g:pydiction_menu_height = 5


"------------------------------------------------------------------------------
"winmanager
"------------------------------------------------------------------------------
map <c-w><c-f> :FirstExplorerWindow<cr> 
map <c-w><c-b> :BottomExplorerWindow<cr> 
map <c-w><c-t> :WMToggle<cr> 
let g:winManagerWindowLayout='FileExplorer|TagList'


"------------------------------------------------------------------------------
"cscope
" plugin is located under .vim/plugin directory
"------------------------------------------------------------------------------
"if has('cscope')
"    " cscopetag on means Vim will include the cscope database whenever we
"    " search for a tag (e.g. by hitting <CTRL-]> in a C program).
"    " cscopeverbose on (optional) gives us a success/failure message when
"    " trying to add a cscope database (including the one near the end of this
"    " snippet).
"    set cscopetag cscopeverbose
"
"    if has('quickfix')
"        set cscopequickfix=s-,c-,d-,i-,t-,e-
"    endif
"
"    cnoreabbrev csa cs add
"    cnoreabbrev csf cs find
"    cnoreabbrev csk cs kill
"    cnoreabbrev csr cs reset
"    cnoreabbrev css cs show
"    cnoreabbrev csh cs help
"
"    "command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
"    command -nargs=0 Cscope cs add $VIMSRC/cscope.out $VIMSRC/
"
"    " Find this difinition
"    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"
"    " Find functions calling this function
"    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"
"    " Find this C symbol
"    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"
"    " Find this text string
"    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"
"    " Find this egrep pattern
"    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"
"    " Find this file
"    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"
"    " Find files #including this file
"    nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
"
"    " Find functions called by this function
"    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"
"endif


"------------------------------------------------------------------------------
"grep
"------------------------------------------------------------------------------
nnoremap <silent> <F3> :Grep<CR> 

set list listchars=tab:→\ ,trail:·

" highlight json as javascript format
autocmd BufNewFile,BufRead *.json set filetype=javascript


"------------------------------------------------------------------------------
" Tag list
"------------------------------------------------------------------------------
"let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim  

" NerdTree {
    if isdirectory(expand("~/.vim/plugged/nerdtree"))
        map <F2> :NERDTreeToggle<CR>
        map <C-e> <plug>NERDTreeTabsToggle<CR>
        map <leader>e :NERDTreeFind<CR>
        nmap <leader>nt :NERDTreeFind<CR>

        let g:NERDShutUp=1

        let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=1
        let g:nerdtree_tabs_open_on_gui_startup=0

        " nerdtree git extension
        let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ "Unknown"   : "?"
            \ }
    endif
" }

"------------------------------------------------------------------------------
" Tagbar
"------------------------------------------------------------------------------
"let g:tagbar_width=35
"let g:tagbar_autofocus=1
"let g:tagbar_left = 1
"nmap <F3> :TagbarToggle<CR>
" TagBar {
    if isdirectory(expand("~/.vim/bundle/tagbar/"))
        "nnoremap <silent> <leader>tt :TagbarToggle<CR>
        nmap <F3> :TagbarToggle<CR>
        let g:tagbar_autofocus = 1
    endif
"}


"------------------------------------------------------------------------------
" python related
"------------------------------------------------------------------------------
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

let g:pyflakes_use_quickfix = 0


" YouCompleteMe {
    if isdirectory(expand("~/.vim/plugged/YouCompleteMe"))
        let g:acp_enableAtStartup = 0

        " enable completion from tags
        let g:ycm_collect_identifiers_from_tags_files = 1

        " remap Ultisnips for compatibility for YCM
        let g:UltiSnipsExpandTrigger = '<C-j>'
        let g:UltiSnipsJumpForwardTrigger = '<C-j>'
        let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

        " Enable omni completion.
        autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
        autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
        autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
        autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
        autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

        " Haskell post write lint and check with ghcmod
        " $ `cabal install ghcmod` if missing and ensure
        " ~/.cabal/bin is in your $PATH.
        if !executable("ghcmod")
            autocmd BufWritePost *.hs GhcModCheckAndLintAsync
        endif

        " For snippet_complete marker.
        "if !exists("g:spf13_no_conceal")
        "    if has('conceal')
        "        set conceallevel=2 concealcursor=i
        "    endif
        "endif

        " Disable the neosnippet preview candidate window
        " When enabled, there can be too much visual noise
        " especially when splits are used.
        set completeopt-=preview
    endif
" }



"------------------------------------------------------------------------------
" user data
"------------------------------------------------------------------------------
set tags=./tags,../tags,../../tags,../../../tags,../../../../tags,./*/tags
set tags+=/Users/wangq/work/packages/sitewhere-master/tags
set tags+=/Users/wangq/work/packages/linux-4.5.3/tags
set tags+=/Users/wangq/virtualenv/tahoe/tags

" Project: kaasdk-10
set tags+=~/.vim/projects/kaasdk-10/tags
cs add ~/.vim/projects/kaasdk-10/cscope.out

" Project: mosquitto
set tags+=~/.vim/projects/mosquitto/tags
cs add ~/.vim/projects/mosquitto/cscope.out

" Project: esp8266-2.3.0
set tags+=~/.vim/projects/esp8266-2.3.0/tags
cs add ~/.vim/projects/esp8266-2.3.0/cscope.out

" Project: kaa-0.9
set tags+=~/.vim/projects/kaa-0.9/tags
cs add ~/.vim/projects/kaa-0.9/cscope.out

" Project: darknet
set tags+=~/.vim/projects/darknet/tags
cs add ~/.vim/projects/darknet/cscope.out

" Project: venvtest
set tags+=~/.vim/projects/venvtest/tags
cs add ~/.vim/projects/venvtest/cscope.out

" Project: kernel
set tags+=~/.vim/projects/kernel/tags
cs add ~/.vim/projects/kernel/cscope.out


set tabstop=4
set shiftwidth=4
set expandtab
