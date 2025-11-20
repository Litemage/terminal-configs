" Set the bell to off
set belloff=all

" Enable relative line numbers
set relativenumber
set number

" Themeing
set background=dark    " Setting dark mode for morhetz/gruvbox
autocmd vimenter * ++nested colorscheme gruvbox-material " Sets colorscheme to gruvbox

"=== NERD TREE CONFIGURATION ===

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Some useful, example keymaps for nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"=== END NERD TREE CONFIGURATION ===

"=== CUSTOM VIM REMAPS ==="

" resize commands for panes
nnoremap <C-l> :vertical resize -1<CR>
nnoremap <C-j> :vertical resize +1<CR>

"=== END CUSTOM VIM REMAPS ==="

call plug#begin()

" =================
" List plugins here
" =================

" Color theme
Plug 'sainnhe/gruvbox-material'

" Language Pack
Plug 'sheerun/vim-polyglot'

" NerdTree for navigating files
Plug 'preservim/nerdtree'

" Fuzzy finder
Plug 'vim-fuzzbox/fuzzbox.vim'

" LUA Line
Plug 'nvim-lualine/lualine.nvim'

call plug#end()
