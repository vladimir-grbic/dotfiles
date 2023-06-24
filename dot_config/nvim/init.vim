" --------- Plugins

call plug#begin()

" Color theme
Plug 'shaunsingh/nord.nvim'

" Insert or delete surroundings in pairs
Plug 'jiangmiao/auto-pairs'

" Manipulate surroundings in pairs
Plug 'tpope/vim-surround'

" Comment stuff out.
Plug 'tpope/vim-commentary'

" File system explorer
Plug 'preservim/nerdtree'

" LaTeX plugin
Plug 'vim-latex/vim-latex'

" Emmet for HTML
" Plug 'mattn/emmet-vim'

" Auto close (X)HTML tags
" Plug 'alvan/vim-closetag'

call plug#end()

" ---------



" --------- General Settings

" Set tabbing
:set smarttab
:set noexpandtab
:set tabstop=8
:set shiftwidth=8

" Set word wrapping
:set wrap
:set tw=80

" Turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" Make Vim invoke plugins. Required for Vim-LaTeX
filetype plugin on

" Automatic indentation as you type
filetype indent on

" Turn on syntax automatically
syntax on

" Automatically delete all trailing white spaces on save
autocmd BufWritePre * %s/\s\+$//e

" Spell check (au = autocmd)
au FileType tex setlocal spell spelllang=en_us
au FileType markdown setlocal spell spelllang=en_us
au BufRead,BufNewFile *.log setlocal spell spelllang=en_us
au BufRead,BufNewFile *.txt setlocal spell spelllang=en_us

" ---------



" ---------  Settings for Compiling Documents

" Compile document, be it groff/LaTeX/markdown/etc.
map <leader>c :w! \| !compiler "<c-r>%"<CR>

" Open corresponding .pdf/.html or preview
map <leader>p :!opout <c-r>%<CR><CR>

" Runs a script that cleans out tex build files whenever a .tex file is closed.
autocmd VimLeave *.tex !texclear %

" ---------



" --------- Vim-Latex Settings

" Change the default filetype of empty .tex files from 'plaintex' to 'tex' to
" load vim-latex
let g:tex_flavor='latex'

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

" Set output format to pdf
let g:Tex_DefaultTargetFormat='pdf'

" Auto compiling for live preview
let g:vimtex_latexmk_continuous = 1

" Disable jumping to warning location after the compiling.
let g:Tex_GotoError=0

" ---------



" --------- Plugin Settings

" Load the color scheme
let g:nord_disable_background = v:true
colorscheme nord

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" Enable Emmet just for html/css
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall

" ---------



" --------- Keybindings

" Default leader key is '\'

" Use Ctrl + t to toggle NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 &&
	\ exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Log the time
:command InLog     pu=strftime(\"*****  IN: %a %b %d %T %Z %Y\")
:command UpdateLog pu=strftime(\"** UPDATE: %a %b %d %T %Z %Y\")
:command OutLog    pu=strftime(\"***** OUT: %a %b %d %T %Z %Y\")

" ---------
