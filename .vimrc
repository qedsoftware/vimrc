syntax on
" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#incubate()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'

"disable vi compatibility (emulation of old bugs)
set nocompatible
set ruler
filetype on
if has("gui_running")
    colorscheme ir_dark_gray 
else
    colorscheme koehler
endif
set guifont=Bitstream\ Vera\ Sans\ Mono:h18
set showcmd
" set smartindent "use intelligent indentation based on C programming language
set expandtab
set wildmode=longest,list,full "file completion
set wildmenu
set cul "highlight current line
hi CursorLine term=none cterm=none ctermbg=none guibg=#771c1c
set statusline=%t%h%m%r%=[%b\ 0x%02B]\ \ \ %l,%c%V\ %P
set laststatus=2 "always show a status line
set cmdheight=1 "make the command line 1 line high

"following based on http://nvie.com/posts/how-i-boosted-my-vim/
set hidden "hides buffers rather than closing them

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
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
set modelines=0 "prevent security exploit
set ttyfast
set relativenumber
set undofile
let mapleader = ","

nnoremap / /\v
vnoremap / /\v
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set formatoptions=qrn1
set colorcolumn=85

nnoremap <leader>a :Ack
"opens a new vertical split and switches over to it
nnoremap <leader>w <C-w>v<C-w>l


