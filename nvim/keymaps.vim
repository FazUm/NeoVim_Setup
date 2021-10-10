" ######################## MAPPINGS #####################
"Map the space bar to be the leader key
nnoremap <SPACE> <Nop>
let mapleader=" "

"telescope configs
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" STATIC CONFIGS TO MAKE IT PRETTY AND EASY TO NAVIGATE
" Center the screen after a search
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

"Clear search highlight when pressing escape key
nnoremap <ESC> :noh<CR><ESC>

"Open the Fern in a file tree view
nnoremap <C-t> :Fern . -drawer -toggle -width=50<CR>

"map to to switch between panes
nmap  ,  <Plug>(choosewin)

"TODO Setup keybinds to jump to definitions. Use blines. Make an enter in normal mode to enter an enter. Allow J and K to move in the menu of autocomplete
nnoremap <CR> o<Esc>


"fuzzy finder/grep in the current buffer
nnoremap // <Esc><Esc>:BLines!<CR>
vmap // <Esc><Esc>:BLines!<CR>

nnoremap <silent> <C-S>	:update<CR>
vnoremap <silent> <C-S>	:update<CR>

"keybinds to comment multiple lines
nmap <C-\> <Plug>Commentary
xmap <C-\> <Plug>Commentary
omap <C-\> <Plug>Commentary
"keybinds comment a line
nmap \\ <Plug>CommentaryLine


"TESTING THE ANY JUMP PLUGIN. in cpp it is not working

" Normal mode: Jump to definition under cursor
nnoremap <leader>j :AnyJump<CR>

" Visual mode: jump to selected text in visual mode
xnoremap <leader>j :AnyJumpVisual<CR>

" Normal mode: open previous opened file (after jump)
nnoremap <leader>ab :AnyJumpBack<CR>

"Normal mode: open last closed search window again
nnoremap <leader>al :AnyJumpLastResults<CR>


" FERN MAPPINGS
function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  " nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  " nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  " nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END

"Switch between buffers
nnoremap <C-p> :bprevious<CR>
nnoremap <C-n> :bnext<CR>
"switch between buffers
nnoremap <leader>p :e#<CR>

"easier jump to open buffers shown in the top bar
nnoremap <silent> gb :BufferLinePick<CR>
"Jump to buffers based on there position in the top bar
nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>


"NOTE NO LONGER INSTALED Float term config
" let g:floaterm_keymap_toggle = '<leader>ft'


"Remap to use j and k in the popup menu sub-mode
inoremap <expr> <C-j> pumvisible() ? "\<C-N>" : "j"
inoremap <expr> <C-k> pumvisible() ? "\<C-P>" : "k"

"Remap VimUltisnips keybinds so they don't collid with the sub-mode keybinds
 let g:UltiSnipsJumpForwardTrigger = '<C-n>'
 let g:UltiSnipsJumpBackwardTrigger = '<C-p>'



" set
let g:toggleterm_terminal_mapping = '<leader>ft'
" or manually...
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><leader>ft <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><leader>ft <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><leader>ft <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>


"Easy motion keymaps
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)


" USEFUL Keybings ->ctl+e or y moves the camera but not the cursor
" gf is cool to open a file under cursor. Remap with a leader key like <leader>f or something
" delm! | delm A-Z0-9 " command to delete all marks!! add a keybind to it
" C-x toggles the lsp_signature
