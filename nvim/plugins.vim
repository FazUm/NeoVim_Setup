"Install plug if not found
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" ################### PLUGINS ############################

call plug#begin('~/.vim/plugged')
	"LSP Plugins
	Plug 'neovim/nvim-lspconfig'
	Plug 'williamboman/nvim-lsp-installer'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'ray-x/lsp_signature.nvim' "adds an extra flavor to autocomplete signatures"
	Plug 'kshenoy/vim-signature' "displays marks placed near the numbers!
	Plug 'onsails/lspkind-nvim' "add icons to the lsp cmp autocomplete"
	Plug 'pechorin/any-jump.vim' "IDE Madness
	Plug 'kosayoda/nvim-lightbulb' "Add a lightbulb when some code action can be done
	Plug 'sbdchd/neoformat'	"Good to format code after it is finished

	" Snippets
	Plug 'hrsh7th/cmp-vsnip'
	Plug 'hrsh7th/vim-vsnip'
	Plug 'SirVer/ultisnips' " Track the engine.
	Plug 'honza/vim-snippets' " Snippets are separated from the engine. Add this if you want them:

	"File tree
	Plug 'lambdalisue/fern.vim' "File tree
	Plug 'lambdalisue/nerdfont.vim'
	Plug 'lambdalisue/fern-renderer-nerdfont.vim' "add web dev icons to fern
	Plug 'yuki-yano/fern-preview.vim' "preview the file before open"
	Plug 'lambdalisue/fern-hijack.vim' "Make fern the default tree instead of newtree"


	"Git Plugins
	Plug 'lewis6991/gitsigns.nvim' "I prefer it to gitgutter"
	Plug 'tpope/vim-fugitive'

	"Improve file and movement in the files
	Plug 't9md/vim-choosewin' "Help switch betwen windows/panes
	Plug 'nvim-lua/plenary.nvim' "Telescope dep"
	Plug 'nvim-telescope/telescope.nvim' "Awesome plugin to move around buffers and search for files
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "fzf.vim depends on it
	Plug 'junegunn/fzf.vim' "required for blines
	Plug 'easymotion/vim-easymotion' "nice to navigate to faster

	
	"Utils
	" Plug 'voldikss/vim-floaterm' " floating terminal
	Plug 'tpope/vim-commentary' "Comment things out. 
	Plug 'akinsho/toggleterm.nvim'

	"Bars and better code colors
	Plug 'nvim-treesitter/nvim-treesitter' "Used to add color to files
	Plug 'itchyny/lightline.vim'	"Line to tell the mode we are in, etcs
	Plug 'akinsho/bufferline.nvim'	"Top bar open buffers"
	Plug 'jiangmiao/auto-pairs' "automatic create pairs for brackets, pars, etcs
	Plug 'luochen1990/rainbow' "add color to brackets, parenthesis, etcs
	Plug 'karb94/neoscroll.nvim'  " add smooth scroll to neovim
	Plug 'machakann/vim-highlightedyank' "highlight text when yanked

	"Start menu plugins
	Plug 'mhinz/vim-startify' "start menu
	Plug 'csch0/vim-startify-renderer-nerdfont' "add nerd fonts to startify
	
	"Themes and icons
	Plug 'joshdick/onedark.vim'	"Color scheme
	Plug 'ayu-theme/ayu-vim' " or other package manager
	Plug 'arcticicestudio/nord-vim'
	Plug 'rakr/vim-two-firewatch'
	Plug 'ryanoasis/vim-webdevicons' "Add icons
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'sts10/vim-pink-moon'
	Plug 'liuchengxu/space-vim-dark'	
	Plug 'tyrannicaltoucan/vim-deep-space'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'ajmwagar/vim-deus'
	Plug 'morhetz/gruvbox'
	Plug 'sainnhe/sonokai'

	"Test Plugins. I  
	" Plug 'ray-x/guihua.lua', {'do': 'cd lua/fzy && make' } "Cool for code refactoring and other stuff".
	" Plug 'ray-x/navigator.lua'
	
	"Plug 'wsdjeg/vim-todo' "Explore this plugin a little better. Opens with :OpenTodo
	"Plug 'lukas-reineke/indent-blankline.nvim' "Add color to indented lines"
	call plug#end()

