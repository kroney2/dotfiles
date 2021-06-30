"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif


" Add a bit extra margin to the left
set foldcolumn=1

" Use hybrid line numbering
set number relativenumber
set nu rnu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    "colorscheme zellner " really good
    "colorscheme delek " nice, different, easy to read
    "colorscheme industry " good; lighter background
    "colorscheme slate " good, but search hard to see
    "colorscheme default " good
    "colorscheme elflord " nice, subdued

    "colorscheme desert " fine, but search hard to see
    "colorscheme koehler " fine; bold
    colorscheme torte " ok; softer feel
    "colorscheme peachpuff " ok
    "colorscheme ron " similar to peachpuff
    "colorscheme darkblue " ok; soft background, name doesn't make sense
    "colorscheme pablo " comments too light to read
    "colorscheme blue " So-so; a lot of blue background, but letters easy to read
    "
    "colorscheme murphy " not enough color distinction for D
    "colorscheme evening " bad; background too bright
    "colorscheme shine " terrible; can't see numbering, too bright
    "colorscheme morning " this one is terrible
catch
endtry

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Buffer management
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use ;n, ;p, and ;d for moving between and removing buffers
let mapleader = ";"

" Buffer movement/control
map <leader>l :bn<cr>
map <leader>h :bp<cr>
map <leader>d :bd<cr>
map <leader>s :ls<cr>

" stop highlighting last search term
map <leader>; :noh<cr>

" Update lastModified in recfile
nnoremap <Leader>m :.!echo -n "lastModified: " && date -u +\%FT\%TZ<ENTER>

"" Automatically remove trailing whitespace on write
autocmd BufWritePre * :%s/\s\+$//e

" Toggle relative numbers
nnoremap <Leader>n :set nu! rnu!<cr>

" Nowrap!!!
set nowrap
