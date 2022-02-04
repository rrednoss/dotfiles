" Set dark background.
set bg=dark

" Highlight the text line of the cursor. Useful to easily spot the cursor.
set cursorline

" Search with case-insensitive setting.
set ignorecase

" While searching, show where the pattern, as it was typed so far, matches.
set incsearch

" This option has the effect of making Vim either more Vi-compatible.
set nocompatible

" Add relative line numbers on the left-hand side.
set number
set relativenumber

" Set shift width to 4 spaces.
set shiftwidth=2

" Set tab width to 4 columns.
set tabstop=2

" If in Insert, Replace or Visual mode put a message on the last line.
set showmode

" Override the 'ignorecase' option if the search pattern contains upper case characters.
set smartcase

" open vertical splits on the right
set splitright

" When 'wildmenu' is on, command-line completion operates in an enhanced mode.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" MAPPINGS --------------------------------------------------------------- {{{

" diasble arrow keys for navigation
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" use Shift+Tab
inoremap <S-Tab> <C-d>
nnoremap <S-Tab> <<

" remap leader key
let mapleader=","

" }}}


" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

  Plug 'dense-analysis/ale'

  Plug 'govim/govim'

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

  Plug 'morhetz/gruvbox'

  Plug 'preservim/nerdtree'

call plug#end()

" conf: morhetz/gruvbox
let g:gruvbox_contrast_dark = 'hard'
autocmd vimenter * ++nested colorscheme gruvbox

" conf: dense-analysis/ale
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

" conf: preservim/nerdtree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" If the current file type is go, set indentation to 8 tabs.
autocmd Filetype go setlocal tabstop=8 shiftwidth=8 noexpandtab

" If the current file type is py, set indentation to 4 spaces.
autocmd Filetype py setlocal tabstop=4 shiftwidth=4 expandtab

" If the current file type is tf, set indentation to 4 spaces.
autocmd Filetype tf setlocal tabstop=4 shiftwidth=4 expandtab

" If the current file type is a tftpl, set indentation to 2 spaces.
autocmd Filetype tftpl setlocal tabstop=2 shiftwidth=2 expandtab

" If the current file type is yaml or yml, set indentation to 2 spaces.
autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype yml  setlocal tabstop=2 shiftwidth=2 expandtab

" }}}
