" vim: set foldmethod=marker
" Options {{{
" 1 important {{{
set nocompatible                                    " NOT behave very Vi compatible
set pastetoggle=<F12>                               " key sequence to toggle paste mode
" }}}
" 2 moving around, searching and patterns {{{
set autochdir                                       " change to directory of file in buffer
set incsearch                                       " show match for partly typed search command
set ignorecase                                      " ignore case when using a search pattern
set smartcase                                       " override 'ignorecase' when pattern has upper case characters
" }}}
" 3 tags {{{
" }}}
" 4 displaying text {{{
set scrolloff=3                                     " number of screen lines to show around the cursor
set lazyredraw                                      " don't redraw while executing macros
set list                                            " show <Tab> as ^I and end-of-line as $
set listchars=tab:>-,trail:·                        " list of strings used for list mode
set number                                          " show the line number for each line (local to window)
set numberwidth=1                                   " number of columns to use for the line number
" }}}
" 5 syntax, highlighting and spelling {{{
set background=dark                                 " "dark" or "light"; the background color brightness
                                                    " REAL developers use a dark background :-)
set hlsearch                                        " highlight all matches for the last used search pattern
set cursorline                                      " highlight the screen line of the cursor
set colorcolumn=79                                  " columns to highlight
" }}}
" 6 multiple windows {{{
set laststatus=2                                    " 0, 1 or 2: when to use a status line for the last window
                                                    " always show status line, even if only 1 window
set hidden                                          " don't unload a buffer when no longer shown in a window
set switchbuf=useopen,usetab                        " "useopen" and/or "split"; which window to use when jumping
" }}}
" 7 multiple tab pages {{{
set showtabline=2                                   " 0, 1 or 2; when to use a tab pages line
                                                    " always show tab line
set guitablabel=%N/\ %t\ %M                         " custom tab page label for the GUI
                                                    " tab labels show the filename without path (tail)
" }}}
" 8 terminal {{{
" }}}
" 9 using the mouse {{{
set mouse=a                                         " list of flags for using the mouse
                                                    " enable mouse in all modes
set mousefocus                                      " the window that the mouse pointer is on is automatically activated
" }}}
" 10 GUI {{{
" }}}
" 11 printing {{{
" }}}
" 12 messages and info {{{
set shortmess=aoOtT                                 " list of flags to make messages shorter
set showcmd                                         " show (partial) command keys in the status line
set rulerformat=%30(%=:b%n%y%m%r%w\ %l,%c%V\ %P%)   " alternate format to be used for the ruler
set report=0                                        " threshold for reporting number of changed lines
set confirm                                         " start a dialog when a command fails
" }}}
" 13 selecting text {{{
" }}}
" 14 editing text {{{
set textwidth=78                                    " line length above which to break a line
set complete=.,w,b,u,U,i,t                          " specifies how Insert mode completion works for CTRL-N and CTRL-P
set completeopt=menuone,longest,preview             " whether to use a popup menu for Insert mode completion
set omnifunc=syntaxcomplete#Complete                " function for tiletype-specific Insert mode completion (local to buffer)
                                                    " use autocomplete as defined by syntax file
set showmatch                                       " when inserting a bracket, briefly jump to its match
set matchtime=2                                     " tenth of a second to show a match for 'showmatch'
set nojoinspaces                                    " NOT use two spaces after '.' when joining a line
" }}}
" 15 tabs and indenting {{{
set tabstop=4                                       " number of spaces a <Tab> in the text stands for (local to buffer)
set shiftwidth=4                                    " number of spaces used for each step of (auto)indent (local to buffer)
set smarttab                                        " a <Tab> in an indent inserts 'shiftwidth' spaces
set softtabstop=4                                   " if non-zero, number of spaces to insert for a <Tab> (local to buffer)
set autoindent                                      " automatically set the indent of a new line (local to buffer)
" }}}
" 16 folding {{{
set foldlevelstart=99                               " value for 'foldlevel' when starting to edit a file
set foldmethod=syntax                               " folding type: "manual", "indent", "expr", "marker" or "syntax" (local to window)
" }}}
" 17 diff mode {{{
" }}}
" 18 mapping {{{
" }}}
" 19 reading and writing files {{{
set nobackup                                        " NOT keep a backup after overwriting a file
set writebackup                                     " write a backup file before overwriting a file
set autowrite                                       " automatically write a file when leaving a modified buffer
set autoread                                        " automatically read a file when it was modified outside of Vim
" }}}
" 20 the swap file {{{
set noswapfile                                      " NOT use a swap file for this buffer
" }}}
" 21 command line editing {{{
set history=100                                     " how many command lines are remembered
set wildmode=list:longest                           " specifies how command line completion works
                                                    " when more than one match, list all matches and complete till longest common string
set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.swp    " list of patterns to ignore files for file name completion
set wildmenu                                        " command-line completion shows a list of matches
" }}}
" 22 executing external commands {{{
" }}}
" 23 running make and jumping to errors {{{
" }}}
" 24 language specific {{{
" }}}
" 25 multi-byte characters {{{
" }}}
" 26 various {{{
set virtualedit=onemore                             " when to use virtual editing: "block", "insert" and/or "all"
set viewoptions=folds,options,cursor,unix,slash     " list of words that specifies what to save for :mkview
" }}}
" }}}
" Settings {{{
filetype plugin indent on                           " enable filetype specific plugins
syntax on                                           " turn on syntax highlighting
scriptencoding utf-8
" }}}
