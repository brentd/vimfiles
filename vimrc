set nocompatible                  " Must come first because it changes other options.

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set relativenumber                " Relative line number
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.
set textwidth=79

set list listchars=tab:\ \ ,trail:•

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs

set cursorline

set title                         " Set the terminal's title

set gdefault                      " Default regexes to global
set laststatus=2


" Remaps

" Use 'jj' to exit insert mode
inoremap jj <ESC>l

" Shift-Enter to exit from insert mode
inoremap <S-CR> <Esc>l

" Use tab to jump between do/end etc.
nnoremap <tab> %
vnoremap <tab> %

" Quicker command mode
nnoremap ; :

" Hit esc to clear search highlights
nnoremap <silent> <esc> :noh<return><esc>

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Appearance

set background=dark
colorscheme ir_black

"hi clear CursorLine
"au InsertEnter * hi CursorLine guibg=#073642
"au InsertLeave * hi CursorLine guibg=#05323d
"hi CursorLine guibg=#05323d

hi Cursor guibg=white
hi Visual guibg=#333333 guifg=#EEEEEE

" NERDTree colors

autocmd VimEnter * hi NERDTreeDir guifg=#eeeeee gui=bold
autocmd VimEnter * hi NERDTreeDirSlash guifg=#eeeeee
autocmd VimEnter * hi NERDTreeExecFile gui=none


" Misc

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

" ZoomWin configuration
map <Leader><Leader> :ZoomWin<CR>

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" Command-T
let g:CommandTMaxHeight=20
let g:CommandTMatchWindowReverse=1
