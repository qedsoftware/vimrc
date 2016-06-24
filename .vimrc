".vimrc configuration, William Wu <william.wu@themathpath.com>

set nocompatible
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'docunext/closetag.vim'
Bundle 'teranex/jk-jumps.vim'
"Bundle 'scrooloose/nerdcommenter'
Bundle 'tomtom/tcomment_vim'
Bundle 'rstacruz/sparkup'
"Bundle 'Lokaltog/powerline'
Bundle 'hpoydar/vim-colors-ir-dark-gray'
Bundle 'promisedlandt/vim-colors-ir_black'
Bundle 'tpope/vim-vividchalk'
Bundle 'noahfrederick/vim-noctu'

" Github repos of the user 'vim-scripts'
" => can omit the username part
Bundle 'The-NERD-tree'
Bundle 'taglist.vim'
Bundle 'jsbeautify'
Bundle 'Wombat'
Bundle 'molokai'
Bundle 'Mustang2'
Bundle 'Solarized'

" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!

syntax on

"disable vi compatibility (emulation of old bugs)
set ruler
filetype on
if has("gui_running")
    colorscheme ir_dark_gray
else
    colorscheme vividchalk 
endif
set guifont=Bitstream\ Vera\ Sans\ Mono:h18
set showcmd
" set smartindent "use intelligent indentation based on C programming language
set expandtab
set wildmenu
set wildmode=longest,list,full "file completion
set cul "highlight current line
hi CursorLine term=none cterm=none ctermbg=none guibg=#771c1c
set laststatus=2 "always show a status line
"set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]
set cmdheight=1 "make the command line 1 line high

"following based on http://nvie.com/posts/how-i-boosted-my-vim/
set hidden "hides buffers rather than closing them

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
"set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

"set history=1000         " remember more commands and search history
"set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup
set noswapfile

filetype plugin indent on
"set list
"set listchars=tab:▸\ ,eol:¬ "invisible chars shown in TM style

autocmd filetype html,xml set listchars-=tab:>.
autocmd FileType html let b:closetag_html_style=1

"remaps : to ; for speed, avoiding usage of SHIFT
nnoremap ; :


"macvim: shift + arrow movement results in selections"
if has("gui_macvim")
	let macvim_hig_shift_movement = 1
endif

"ctags: open definition in a new tab, open definition in new split"
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

"This unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>

"Fix with clang http://stackoverflow.com/questions/10901129/clang-complete-doesnt-work
let g:clang_user_options='|| exit 0'
" SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType = "context"
" Disable auto popup, use <Tab> to autocomplete
let g:clang_complete_auto = 0
" Show clang errors in the quickfix window
let g:clang_complete_copen = 1

" JSON highlighting by using Javascript highlighting
autocmd BufNewFile,BufRead *.json set ft=javascript

" crontab editing
set backupskip=/tmp/*,/private/tmp/*

" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

" http://items.sjbach.com/319/configuring-vim-right
set scrolloff=3

" http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide#fuzzy-text-file-search
set foldmethod=indent
set foldlevel=99
"map ctrl+movement to window movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"http://stevelosh.com/blog/2010/09/coming-home-to-vim/
" set modelines=0 "prevent security exploit
set ttyfast
set relativenumber
set number
" set undofile
let mapleader = ","

nnoremap / /\v
nnoremap <leader><space> :noh<cr>

set colorcolumn=85 "red line to remind us not to write long lines
highlight ColorColumn guibg=#121212 ctermbg=darkred

"ack
nnoremap <leader>a :Ack
"opens a new vertical split and switches over to it
nnoremap <leader>w <C-w>v<C-w>l

"guifg=orange
hi User1 guifg=#eea040 guibg=#222222 ctermfg=red ctermbg=DarkGray
"guifg=red
hi User2 guifg=#dd3333 guibg=#222200 ctermfg=darkred ctermbg=DarkGray
"guifg=magenta
hi User3 guifg=#ff66ff guibg=#222222 ctermfg=magenta ctermbg=DarkGray
"guifg=green
hi User4 guifg=#a0ee40 guibg=#222222 ctermfg=green ctermbg=DarkGray
"guifg=yellow
hi User5 guifg=#eeee40 guibg=#222222 ctermfg=yellow ctermbg=DarkGray

"set statusline=
"set statusline+=%1*  "switch to User1 highlight
"set statusline+=%F   "full filename
"set statusline+=%2*  "switch to User2 highlight
"set statusline+=%y   "filetype
"set statusline+=%3*  "switch to User3 highlight
"set statusline+=%l   "line number
"set statusline+=%*   "switch back to statusline highlight
"set statusline+=%P   "percentage thru file
"
"
set statusline +=%2*buf:%1*\ %n\ %*            "buffer number
set statusline +=%2*type:%1*\ %y\ %*                 "file type
set statusline +=%2*path:%1*\ %<%F%*            "full path
set statusline +=%4*%m\ %*                "modified flag
set statusline +=%2*%=line:\ %*
set statusline +=%1*%l%*             "current line
set statusline +=%1*/%L\ %*               "total lines
set statusline +=%2*%=col:\ %*             "virtual column number
set statusline +=%1*%v\ %*
set statusline +=%2*%=char:\ %*          "character under cursor 
set statusline +=%1*\0x%04B\ %*  

"http://vim.wikia.com/wiki/Change_statusline_color_to_show_insert_or_normal_mode
" first, enable status line always
set laststatus=2

" http://vim-taglist.sourceforge.net/manual.html
" toggle TListOpen and TListClose 
nnoremap <silent> <F8> :TlistToggle<CR>

set mouse=a

"https://github.com/teranex/jk-jumps.vim
let g:jk_jumps_minimum_lines = 7


"http://stevelosh.com/blog/2010/09/coming-home-to-vim/
"TextMate-style invisible characters
set list
set listchars=tab:▸\ ,eol:¬
