set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"All bundles
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'cschlueter/vim-wombat'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'vim-scripts/Jinja'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-markdown'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle "garbas/vim-snipmate"
filetype plugin indent on 
syntax on
filetype on
filetype plugin indent on
set ofu=syntaxcomplete#Complete
set hidden
set spell
colorscheme wombat
set cc=85
set t_Co=256
set cpoptions+=$
set background=dark
let mapleader = ','    
map <leader>td <Plug>TaskList
set nu
set showmode
" packs the highlighting once the search is done
nnoremap <leader><space> :noh<cr>
"automatically reload vimrc when its saved
au BufWritePost .vimrc so ~/.vimrc
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set visualbell
set foldmethod=indent
set foldlevel=99
map <leader>n :NERDTreeToggle<CR>
" let g:pyflakes_use_quickfix = 0
let g:SuperTabDefaultCompletionType = "context"
"status line info
if has('cmdline_info')
		set ruler                  	" show the ruler
		set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
		set showcmd                	" show partial commands in status line and
									" selected characters/lines in visual mode
	endif
if has('statusline')
        set laststatus=2

		" Broken down into easily includeable segments
		set statusline=%<%f\    " Filename
		set statusline+=%w%h%m%r " Options
		set statusline+=%{fugitive#statusline()} "  Git Hotness
		set statusline+=\ [%{&ff}/%Y]            " filetype
		set statusline+=\ [%{getcwd()}]          " current dir
		"set statusline+=\ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
		set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
	endif
"improve navigation in wrapped lines
nnoremap j gj
nnoremap k gk

"maps splits
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
imap jj <ESC>

"search stuff
set ignorecase
set smartcase
set showmatch
set incsearch
set hlsearch
set undofile
"set gdefault
nnoremap / /\v
vnoremap / /\v


"Handle long lines
set wrap
set textwidth=79
set formatoptions=qrn1
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

inoremap <Up>      <NOP>
inoremap <Down>    <NOP>
inoremap <Left>    <NOP>
inoremap <Right>   <NOP>
noremap <Up>       <NOP>
noremap <Down>     <NOP>
noremap <Left>     <NOP>
noremap <Right>    <NOP>
" buffer things
nnoremap <silent> <S-j> :bn<CR>
nnoremap <silent> <S-k> :bp<CR>
nnoremap <leader> y :YRShow<CR>
"Control p stuff
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn)$'
nnoremap <leader>p :CtrlP<CR>
nnoremap <silent> <F4> :YRShow<CR>
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
"rainbow options
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
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
