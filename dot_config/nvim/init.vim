" --------- Plugins

call plug#begin()

" Color theme
Plug 'shaunsingh/nord.nvim'

" File system explorer
Plug 'preservim/nerdtree'

" LaTeX plugin
Plug 'vim-latex/vim-latex'

" Manipulate surroundings in pairs
Plug 'tpope/vim-surround'

" Insert or delete surroundings in pairs
Plug 'jiangmiao/auto-pairs'

" Emmet for HTML
Plug 'mattn/emmet-vim'

" Auto close (X)HTML tags
Plug 'alvan/vim-closetag'

" Vim Wiki
" Plug 'vimwiki/vimwiki'

" Initialize plugin system
call plug#end()

" ---------



" --------- General Settings

" Set tabbing
:set expandtab
:set smarttab
:set tabstop=4
:set shiftwidth=4

" Set word wrapping
:set wrap
:set tw=80

" Turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" Make Vim invoke plugins. Required for Vim-LaTeX, VimWiki
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
autocmd BufRead,BufNewFile *.log setlocal spell spelllang=en_us
autocmd BufRead,BufNewFile *.txt setlocal spell spelllang=en_us

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

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

" Set output format to pdf
let g:Tex_DefaultTargetFormat='pdf'

" Auto compiling for live preview
let g:vimtex_latexmk_continuous = 1

" Ignore warnings matching first 3 patterns in g:Tex IgnoredWarnings
let g:tex_IgnoredWarnings =
    \'Underfull'."\n".
    \'Overfull'."\n".
    \'specifier changed to'."\n".
    \'You have requested'."\n".
    \'Missing number, treated as zero.'."\n".
    \'There were undefined references'."\n".
    \'Citation %.%# undefined'."\n".
    \'Double space found.'."\n"
let g:Tex_IgnoredLevel = 7

" ---------



" --------- Plugin Settings

" Required for VimWiki
set nocompatible

" Change VimWiki syntax to markdown
let g:vimwiki_list = [{'path': '$HOME/documents/vimwiki/',
	\ 'syntax': 'markdown', 'ext': '.md'}]

" Load the color scheme
let g:nord_disable_background = v:true
colorscheme nord

" Enable Emmet just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" ---------



" --------- Keybindings

" Default leader key is '\'

" Open split windows at bottom (sp) and right (vsp)
set splitbelow splitright

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
