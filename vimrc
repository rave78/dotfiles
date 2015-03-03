set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/home/federico/.vim/bundle/vundle/
set rtp+=/home/federico/Tools/powerline/powerline/bindings/vim

call vundle#rc()
call pathogen#infect()

let g:vundle_default_git_proto='git'


" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tomasr/molokai'
Bundle 'tpope/vim-repeat'
Bundle 'kien/ctrlp.vim'
Bundle 'plasticboy/vim-markdown'
Bundle 'sjl/gundo.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle 'wincent/Command-T'
" Bundle 'mikewest/vimroom'
Bundle 'scrooloose/nerdtree'

" VIMROOM
nnoremap <silent> <leader>m <Plug>VimroomToggle

" Basic setting based on jeff knupp
syntax on " syntax highlighing
filetype on " try to detect filetypes
filetype plugin indent on " enable loading indent file for filetype
set number " Display line numbers
set background=dark " We are using dark background in vim
set title " show title in console title bar
set wildmenu " Menu completion in command mode on <Tab>
set wildmode=full " <Tab> cycles between all matching choices.
set guifont=MyFont\ for\ Powerline
let g:Powerline_symbols = 'fancy'

" Powerline color term
set t_Co=256
set encoding=utf-8

" Useful settings in powerline status
set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" Solarized color scheme
let g:solarized_termcolors=256
colorscheme solarized

if has('gui_running')
    set background=light
else
    set background=light
endif

" To save, ctrl-a
nmap <c-a> :w<CR>
imap <c-a> <Esc>:w<CR>a

" vim-markdown
let g:vim_markdown_folding_disabled=1


"""Moving Around Editing (Jeff)
""" Moving Around/Editing
set cursorline " have a line indicate the cursor location
set ruler " show the cursor position all the time
set nostartofline " Avoid moving cursor to BOL when jumping around
set virtualedit=block " Let cursor move past the last char in <C-v> mode
set scrolloff=3 " Keep 3 context lines above and below the cursor
set backspace=2 " Allow backspacing over autoindent, EOL, and BOL
set showmatch " Briefly jump to a paren once it's balanced
set wrap " Wrap text
set linebreak " don't wrap textin the middle of a word
set autoindent " always set autoindenting on
set smartindent " use smart indent if there is no indent file
set tabstop=4 " <tab> inserts 4 spaces
set shiftwidth=4 " And an indent level is 4 spaces wide.
set softtabstop=4 " <BS> over an autoindent deletes all spaces.
set expandtab " Use spaces, not tabs, for autoindent/tab key.
set shiftround " rounds indent to a multiple of shiftwidth
set formatoptions=tcroql " Setting text and comment formatting to auto
set textwidth=80 " lines are automatically wrapped after 80 columns
set nofoldenable " turn off folding
set colorcolumn=80 " highlight column 80 (where words will wrap)

 
" don't bell or blink
set noerrorbells
set vb t_vb=


""" Python Configuration

" Load pylint code plugin
let g:pymode_lint = 1

" Switch pylint, pyflakes, pep8, mccabe code-checkers
" Can have multiply values "pep8,pyflakes,mcccabe"
let g:pymode_lint_checker = "pyflakes,pep8"

" Skip errors and warnings
" E.g. "E501,W002", "E2,W" (Skip all Warnings and Errors startswith E2) and etc
let g:pymode_lint_ignore = "C0103"

" Select errors and warnings
" E.g. "E4,W"
" let g:pymode_lint_select = ""

" Run linter on the fly
" let g:pymode_lint_onfly = 0

" Pylint configuration file
" If file not found use 'pylintrc' from python-mode plugin directory
" let g:pymode_lint_config = "$HOME/.pylintrc"

" Check code every save
let g:pymode_lint_write = 1

" Auto open cwindow if errors be finded
let g:pymode_lint_cwindow = 0

" Show error message if cursor placed at the error line
let g:pymode_lint_message = 1

" Auto jump on first error
let g:pymode_lint_jump = 0

" Hold cursor in current window
" when quickfix is open
let g:pymode_lint_hold = 0

" Place error signs
let g:pymode_lint_signs = 1

" Maximum allowed mccabe complexity
let g:pymode_lint_mccabe_complexity = 8

" Minimal height of pylint error window
" let g:pymode_lint_minheight = 3

" Maximal height of pylint error window
" let g:pymode_lint_maxheight = 6
"

" Load rope plugin
let g:pymode_rope = 0

" Key for set/unset breakpoint
let g:pymode_breakpoint_key = '<leader>b'

" Autoremove unused whitespaces
let g:pymode_utils_whitespaces = 1

" Enable pymode indentation
let g:pymode_indent = 1

" Enable pymode's custom syntax highlighting
let g:pymode_syntax = 1

" Enable all python highlightings
let g:pymode_syntax_all = 1

" Highlight "print" as function
let g:pymode_syntax_print_as_function = 0

" Highlight indentation errors
let g:pymode_syntax_indent_errors = g:pymode_syntax_all

" Highlight trailing spaces
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Highlight string formatting
let g:pymode_syntax_string_formatting = g:pymode_syntax_all

" Highlight str.format syntax
let g:pymode_syntax_string_format = g:pymode_syntax_all

" Highlight string.Template syntax
let g:pymode_syntax_string_templates = g:pymode_syntax_all

" Highlight doc-tests
let g:pymode_syntax_doctests = g:pymode_syntax_all

" Highlight builtin objects (__doc__, self, etc)
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all

" Highlight builtin functions
let g:pymode_syntax_builtin_funcs = g:pymode_syntax_all

" Highlight exceptions
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all
