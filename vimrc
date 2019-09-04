set nocompatible              " be iMproved, required
filetype off                  " required

set nu
set encoding=utf-8

syntax enable

set background=dark
colorscheme solarized

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'altercation/vim-colors-solarized'

Plugin 'vim-scripts/c.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'tpope/vim-surround'

Plugin 'bling/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'vim-scripts/functionlist.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'rdnetto/YCM-Generator'

Plugin 'scrooloose/syntastic.git'

Plugin 'kien/ctrlp.vim.git'

Plugin 'easymotion/vim-easymotion'

Plugin 'tmhedberg/SimpylFold'

Plugin 'vim-scripts/indentpython.vim'

Plugin 'nvie/vim-flake8'

Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'xolox/vim-misc'

Plugin 'xolox/vim-easytags'

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let python_highlight_all=1

syntax on

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
call togglebg#map("<F5>")
map <F3> :NERDTreeToggle<CR>
map <C-Right> :tabn<cr>
map <C-Left> :tabp<cr>

let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
"dnf install powerline-fonts

let  g:C_UseTool_doxygen = 'yes' 

"let g:syntastic_c_compiler

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Enable folding
set foldmethod=indent
set foldlevel=99

let g:SimpylFold_docstring_preview=1

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

"Agrega avisos donde se encuentren espacios en blanco
"au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/

" C
"au BufRead,BufNewFile *.c,*.h set expandtab
"au BufRead,BufNewFile *.c,*.h set tabstop=4
"au BufRead,BufNewFile *.c,*.h set shiftwidth=4
"au BufRead,BufNewFile *.c,*.h set autoindent
"au BufRead,BufNewFile *.c,*.h match BadWhitespace /^\t\+/
"au BufRead,BufNewFile *.c,*.h match BadWhitespace /\s\+$/
"au         BufNewFile *.c,*.h set fileformat=unix
"au BufRead,BufNewFile *.c,*.h let b:comment_leader = '/* '
"
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Permite cambiar el fondo entre Dark y Light usando la tecla F5
call togglebg#map("<F5>")
