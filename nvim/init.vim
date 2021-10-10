" It is required to have clangd, pyls, pynvim, cmake, make, etcs. Use :checkhealth

" Sourced files
source $HOME/.config/nvim/defaults.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/keymaps.vim
luafile $HOME/.config/nvim/lspconfigs.lua
luafile $HOME/.config/nvim/treesitter.lua
luafile $HOME/.config/nvim/lightbulb.lua
luafile $HOME/.config/nvim/gitsigns.lua
"FIXME
" luafile $HOME/.config/nvim/toggleterm.lua 
luafile $HOME/.config/nvim/toggleterm.lua
" luafile $HOME/.config/nvim/indentline.lua "INFO plugin needs to be installed first"

" Highlight TODO, FIXME, NOTE, etc.
if has('autocmd') && v:version > 701
    augroup todo
        autocmd!
        autocmd Syntax * call matchadd(
                    \ 'Debug',
                    \ '\v\W\zs<(NOTE|INFO|IDEA|TODO|FIXME|CHANGED|XXX|BUG|HACK|TRICKY|ERROR|IMPORTANT)>'
                    \ )
    augroup END
endif



" NOTE Select the vim colorscheme
set background=dark
" colorscheme nord
" colorscheme onedark
" colorscheme onedark
" colorscheme pink-moon
" colorscheme space-vim-dark
" colorscheme deus
" colorscheme deep-space
" colorscheme dracula
" colorscheme gruvbox
" colorscheme ayu


"Sonokai theme config
let g:sonokai_style = 'atlantis'
" let g:sonokai_style = 'andromeda'
colorscheme sonokai

"ayu theme config
let ayucolor="mirage"

"two-firewatch theme config
" let g:two_firewatch_italics=1
" colo two-firewatch


"vim-highlightedyank config
let g:highlightedyank_highlight_duration = 100

" enable the rainbow brackets
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

"show open buffers in the top line
lua require("bufferline").setup{}

" setup smoothscroll
lua require('neoscroll').setup()

" Status bar config (lightline + devicons + colorscheme)
"deepspace, one, wombat -> possible colorschemes
let g:lightline = {
      \ 'component_function': {
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ },
      \ 'colorscheme': 'wombat', 
	  \ }

"Fern config for devicons + other confis
let g:fern#renderer = "nerdfont"

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction


"lightbulb plugin setup ?!? need to review it
autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()
