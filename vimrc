" ATTENTION: Do not add settings before "set nocompatible" since they may be
"            be reset from running the latter command
"

" Basic settings {
    set nocompatible        " get out of vi-compatability mode
    set background=dark     " expect dark background
    syntax on        " activate syntax highlighting
" }

" General {
    set backspace=indent,eol,start    " 'improved' backspace
    " prevent cluttering for...
    "set backupdir=~/.vim/backup//   " ... backup files
    "set directory=~/.vim/tmp//      " ... swap files
    set mouse=a             " always enable mouse support (scrolling etc.)
    set wildmenu                    " enable auto-completion choice
    set wildmode=list:longest,full  " show list at 1st tab, menu at 2nd
    " ignore these file extensions for autocompletion
    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,
        \*.gif,*.png,*.class
" }

" Vim UI {
    set incsearch       " highlight search phrase while typing
    set hlsearch        " highlight search results
    set list            " show listchars
    set listchars=tab:>-    " show tabs and trailing
    set scrolloff=10    " at least x lines before/after search hit
    set nonumber        " don't show line numbers by default
    syntax on           " activate syntax highlighting

    " Set colors for autocomplete popup
    highlight Pmenu    ctermfg=black ctermbg=magenta
    highlight PmenuSel ctermfg=black ctermbg=white
" }

" Formatting {
    set autoindent
    set expandtab       " don't use real tabs
    set softtabstop=4   " set the size of inserted tab to 4 spaces
    set tabstop=4       " set real tabs to 4 as well
    set shiftwidth=4    " indentation when using >> or <<
    set shiftround      " round indent from <C-[TD]> or '[><] ' to shiftwidth

" }

" Format options {
    set textwidth=79    " Make sure newlines are inserted at appropriate places
    " Default format settings
    " {
        set formatoptions-=t    " Don't auto-wrap text
"        set formatoptions+=c    " Auto-wrap comments
"        set formatoptions+=a    " Automatic reformatting of paragraphs
    " }

    " Enable auto-wrap of text for .txt-files 
    autocmd BufNewFile,BufRead *.txt set formatoptions+=ta
" }

" Key bindings {
    " toggle show tabs
    noremap <silent> <F7> :set list!<CR>
    " toggle numbering
    noremap <silent> <F8> :set number!<CR>
    " hide search result highlighting
    noremap <silent> <F9> :noh<CR>
    " Reformat paragraph to fit within 79 chars
    noremap <silent> <F12> {!}fmt -79<CR>
" }
