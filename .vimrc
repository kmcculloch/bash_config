" K. McCULLOCH VIMRC

" FILETYPES
set nocompatible "unclear why, but better safe than sorry
execute pathogen#infect()
syntax on
filetype plugin indent on
filetype plugin on
set autoindent

" APPEARANCE
set t_Co=256 "use 256 colors
colorscheme jellybeans
"colorscheme coffee "colors a bit neon; not enough variation
"colorscheme desert256 "nice, modest; comments light blue
"colorscheme molokai "pretty good variation; background is dark grey
set number "left-hand line numbering
set ruler "show line, column number and percentage
set linebreak "wrap long lines rather than entering line breaks
set scrolloff=3 "scrolling offset of 3 lines at top/bottom
set title "set terminal title to file name

" RIGHT-SIDE MARGIN
"see http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
"highlight ColorColumn ctermbg=233
"let &colorcolumn=join(range(81,999),",")

" SHOWMARKS
hi ShowMarksHLl ctermfg=grey ctermbg=none
hi ShowMarksHLu ctermfg=grey ctermbg=none
hi ShowMarksHLo ctermfg=grey ctermbg=none
hi ShowMarksHLm ctermfg=grey ctermbg=none
let b:showmarks_include="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

" BEHAVIOR
"set relativenumber
set timeout timeoutlen=3000 "set timeout gap for multi-key operations to 3 sec
set expandtab "use spaces instead of tab character
set tabstop=2 "tab stops calculated every 2 spaces
set shiftwidth=2 "number of spaces to use for each step of autoindent
set autoindent "copy indent from current line when starting a new line
set smartindent "autoindent automatically based on syntax
set history=1000 "increase command-line history from 20 to 1000
set shortmess=atI "shorten various system messages
set visualbell "use the visual bell instead of beeping

" BACKUPS AND RECOVERY
" Turn off the default backup/swapfile behavior
set nobackup 
set noswapfile 

" MAP LEADER
" use the space bar as a leader for custom operations
nnoremap <Space> <Nop>
let mapleader = " "

" UNMAP CERTAIN KEYS
" better if keys I often hit in error do nothing
nnoremap K <Nop>
nnoremap <Leader>J J
nnoremap J <Nop>
nnoremap <Leader>d <Nop>
nnoremap <Leader>D <Nop>

" TABS
set showtabline=2 "always show tab bar
cabbrev help tab help
noremap <Leader><Left> :tabp<CR>
noremap <Leader><Right> :tabn<CR>
noremap <Leader><Down> :tabnew<CR>
noremap <Leader><Up> :tabm 0<CR>

" ESCAPE KEY
" use the tab key to escape
" in normal mode, cancel any prefix keys (eg. # for count)
nnoremap <Tab> <Esc>
" in visual mode, cancel any selection (gV prevents automatic reselection)
vnoremap <Tab> <Esc>gV
" cancel any operator-pending command
onoremap <Tab> <Esc>
" exit insert mode and restore cursor position (no move left)
inoremap <Tab> <Esc>`^
" insert an actual-to-goodness tab when in insert mode
inoremap \<Tab> <Tab>

" SEARCHING
set ignorecase "case ignored while searching
set smartcase
set incsearch "see results while typing
set hlsearch "search matches are highlighted
set nowrapscan
" clear previous search string
noremap <Leader><Space> :let<Space>@/<Space>=<Space>""<CR>

" CUT & PASTE
" always paste above
nnoremap p P

" INSERTIONS
" insert one character
nnoremap <Leader>r i_<Esc>r
" always insert line above 
nnoremap o O
" append to end of the line
noremap <Leader>a $a
" prepend to beginning of the line
noremap <Leader>i ^i

" TRANSFORMATIONS
" make a word upper case
noremap <Leader>U vawgU
" make a word lower case
noremap <Leader>u vawgu

" VIMRC EDITING
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" a shortcut mapping for :
noremap ; :


" MOVEMENT

" make sure marks move us back to the specified location
nnoremap ' `
nnoremap ` '

" keep cursor from jumping over multiline rows
nnoremap j gj
nnoremap k gk

" multiples of ten
noremap <Leader>j 10j
noremap <Leader>k 10k
noremap <Leader>h 10h
noremap <Leader>l 10l

" up or down half a page, then center screen
noremap <Leader>f 24jzz
noremap <Leader>F 24kzz

" vimwiki
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/',
      \'nested_syntaxes': {'php': 'php'}}]
let g:vimwiki_table_mappings = 0
      "\'template_path': '~/Dropbox/vimwiki/template/',
      "\'template_default': 'default',
      "\'template_ext': '.html',
      "\'path_html': '~/Dropbox/github/vimwiki/'

map <F4> :VimwikiAll2HTML<CR>

" REMAINDERS
"autocmd VimEnter * 24jzz
"colorscheme desert256
"noremap <Leader>H :help<CR>:only<CR>
" COMMENTS
" //
"noremap <Leader>/ ^i//<Esc>hj
"noremap <Leader>? ^xxj
" "
"noremap <Leader>" ^i"<Esc>j
"noremap <Leader>' ^xj
" /* */
"noremap <Leader>* ^i/*<Esc>$a*/<Esc>j
"noremap <Leader>8 ^xx$xxj
" # 
"noremap <Leader># ^i#<Esc>j
"noremap <Leader>3 ^xj
"noremap <Leader>/ <Leader>c<space>

" insert one line above and exit insert mode
"nnoremap <Leader>O o<Esc>
"nnoremap <Leader>o o<Esc>

" set mark s, then begin search at top of file
"noremap / ms/
"noremap / msgg/
" set mark s, then begin word match at top of file
"nnoremap * ms:set wrapscan<CR>*ggn:set nowrapscan<CR>
" SPECIAL SEARCHES
" find the beginning of comment blocks
" noremap <Leader>c msgg/\/\*\*<CR>
