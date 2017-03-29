" Store swap files in fixed location, not current directory.
" The // at the end of the path stores the complete path in the file name
" this ensure file name uniqueness
set backup
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" undofile - This allows one to use undos after exiting and restarting vim
set undofile
set undodir=~/.vim/undo//
set undolevels=3000     " how many undos
set undoreload=10000    " number of lines to safe

" Highlight syntax
syn on
" Enable filetype detection (enabled automatically with ftplugin below)
"filetype on

" Set Spell checking
"set spell
" Map F12 to toggle spell checking
map <f12> :set spell!<cr>
" Spelling languages
set spelllang=pt_br,en
" zg to add word to word list
" zw to reverse
" zug to remove word from word list
" z= to get list of possibilities
set spellfile=~/.vim/spellfile.add


" http://nickgravgaard.com/elastictabstops/
" http://vim.wikia.com/wiki/Indenting_source_code
" Always use spaces as tabs; set <tab> columns width;
" set identation width for << and >>
"set expandtab
"set softtabstop=4
"set shiftwidth=4

" ns-3 vim defaults
let c_no_bracket_error=1
let c_no_curly_error=1
let c_comment_strings=1
let c_gnu=1

" To modify the current file to the options above type in command line
" http://vim.wikia.com/wiki/Fix_indentation
":set et ts=4 sw=4
":retab
" Then type in normal mode:
"gg=G


" Automatic Indentation: http://goo.gl/ClGeaQ
" set indentation per file type ($VIMRUNTIME/ftpugin has many filetype
" indentations configured and *should* work):
filetype plugin indent on " don't set smarttab or autoindent simultaneously!

" force the recognition of PKGBUILD files
au BufNewFile,BufRead PKGBUILD set filetype=PKGBUILD
" recognizes markdown files with md extensions
au BufNewFile,BufRead *.md set filetype=markdown

" tab (should) make code completion
set wildmenu

" Enable snipMate plugin (not needed as indent above does this too)
"filetype plugin on

" Insert new line without entering insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Stop indenting when pasting with the mouse
"set paste " do not leave always on; doesn't work with snippets
" Toggle on/off the above command with F5
set pastetoggle=<f5>

" Search options vars
set ignorecase
set smartcase   " Use any case if any caps is used
set incsearch   " Show match as search proceeds
set hlsearch    " Search highlight

" highlight all characters exceeding column 80
"highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
"match OverLength /\%>79v.\+/
" make 79th column be highlighted
"set colorcolumn=79
"hi ColorColumn ctermbg=lightblue guibg=lightblue

" relative line numbers
set relativenumber
"highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
set numberwidth=3

" 256 colors
set t_Co=256

"solarized colorscheme
syntax enable
set background=dark
colorscheme solarized
