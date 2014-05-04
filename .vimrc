"-----------------------------------------
" Vimrc dot file: Maintained by Dan Fowler
" Website: dsfcode.com
" Version 1.0.0
" 
" Sections:
"    Basics Vim Startup
"    UI Tweaks
"    Vim Functionality
"    Text Handling
"    Mappings
"-----------------------------------------

"------------------
" Basic Vim Startup
"------------------
     syntax on " Turn syntax on
     colorscheme darkblue " Set the colorscheme
     set history=1000 " Bigger history than default
     set ffs=unix,mac,dos " Use Unix as the standard file type
     set noswapfile | set nowritebackup | set nobackup " Make vim run faster by turning off swap files/backup

"----------
" UI Tweaks
"----------
     set number " Set line numbers to visible
     set numberwidth=5 " Set default line number width
     set wildmenu " Better command-line completion
     set laststatus=2 " Always display the status line
     set showcmd " Use to view last command and also number of line/chars highlighted
     set statusline=%M\ %F\ %=[%{&ff},%{&ft}]\ [(%l,%v)/%L\ %p%%] " Set what is displayed on the status line

"------------------
" Vim Functionality
"------------------
     set nocompatible " Overrides the -C option (more vim like less vi like)
     set hidden " Makes working with buffers easier
     set splitright " Default :sp to split to the right
     set tabpagemax=20 " Set the max number of tabs you can have open at once (default is 10)
     set whichwrap=<,>,[,],b,s " Use cursors, space, and backspace to wrap
     set ignorecase | set smartcase " Use case insensitive search, except when using capital letters (smartcase)
     set confirm " Ask to save file if quitting with unsaved files open
     set autoread " Set to auto read when a file is changed from the outside
     set lazyredraw " Don't redraw while executing macros (good performance config)
     set nomore " Finish more output right away
     set helpheight=10 " Set help file height (default 20)

"--------------
" Text Handling
"--------------
     set autoindent " Enable auto indent
     set iskeyword-=_ " Make _ a word devider
     set magic " For regular expressions turn magic on
     set tabstop=5 | set shiftwidth=5 | set noexpandtab " Set up tab execution
     set nofoldenable " Don't automatically fold
     set foldmethod=manual " Use indents for folding

"---------
" Mappings
"---------
     " Treat long lines as break lines (useful when moving around in them)
     nmap j gj
     nmap k gk

     " Move a line of text using CTRL+[JK]
     nmap <c-J> ddp
     nmap <c-K> ddkP

     " Use Ctrl-n to toggle line numbers
     nmap <c-n> :set invnumber<CR>
     imap <c-n> :set invnumber<CR>a

     " Use Ctrl-p to get tht current working path
     imap <c-p> <C-R>=expand('%:p:h')<CR>
     nmap <c-p> i<c-p>

     " Put ${ } around a word (good for dealing with bash variables)
     imap <c-a> bi${ea}

     " Use control keys to get around in tabs
     nmap <c-l> gt
     nmap <c-h> gT

     " Switch two blocks of text
     vnoremap <c-x> <Esc>`.``gvP``P

     " Place #---... around comments
     nmap <Leader>c Y2pk:s;[^#\/"];-;g<CR>jj:s;[^#\/"];-;g<CR>k

     " Yank an entire file
     nmap <c-c> ggyG``
