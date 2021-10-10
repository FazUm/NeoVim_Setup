" ################### DEFAULT CONFIGS FOR NEOVIM ############################
syntax enable
syntax on
set clipboard=unnamedplus "copy to the system clipboard
set wrap	"makes long lines wrap in case the phrase is long"
set textwidth=100
set nobackup
set nowritebackup
set noswapfile
set number
set termguicolors
set autoindent
set cursorline "show line of the cursor
set noshowmode "remove the statusline of vim
set mouse=a "enable mouse
set hlsearch "enable search highlight"
set hidden "switch buffers without the need to save them
set formatoptions-=cro "remove the automatic wrap of text in the nextlines in case it is a comment
set linebreak	"prevent from breaking in a middle of a word
set tabstop=4
set softtabstop=4
set shiftwidth=4
set scrolloff=5
set foldcolumn=0
set noerrorbells "disable the dam beeping
set incsearch
set t_Co=256
set pumheight=10 "limit the number of suggestion in the completion menu
" set updatetime=100
filetype plugin on

set completeopt=menu,menuone,noselect

"switch between relative and non relative number when in insert or
"normal mode 
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber 
"Force relative number when entering vim
autocmd VimEnter * :set relativenumber 

"Preserve cursor location upon switch buffers. NOT WORKING
:autocmd BufEnter * silent! normal! g`"

"Automatic source the init.vim after saving
autocmd! bufwritepost init.vim source %

" NOTE: available colors https://vim.fandom.com/wiki/Xterm256_color_names_for_console_Vim
" set the line lumber to white
highlight LineNr term=bold cterm=NONE ctermfg=white ctermbg=NONE gui=NONE guifg=white guibg=NONE
" set the line number to gray
" highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
