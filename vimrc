"
"
" cd ~  
" mkdir -p ~/.vim/{autoload,colors,syntax,plugin,spell,config}
" mv .vimrc .vim/vimrc
" ln -s .vim/vimrc .vimrc
"
" Pour se simplifier l'accès aux Plugins vim :
" git clone https://github.com/tpope/vim-pathogen.git pathogen
" cd autoload
" ln -s ../pathogen/autoload/pathogen.vim .
"
"
" ZE site à suivre pour configurer vim :
" https://artisan.karma-lab.net/configurer-vim
" Un premier plugin avec NerdTree :
"
 "cd ~/.vim
" mkdir -p bundle
" cd bundle
" 
" git clone https://github.com/scrooloose/nerdtree.git nerdtree
"
" Un autre : 
"
set nu
set nocompatible
set mouse-=a 
filetype off 
" filetype plugin indent on
syntax enable

set tabstop=4
set softtabstop=4
set smarttab

set cursorline
set wildmenu
set wildmode=longest:list
set modeline
set showmatch
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

set signcolumn=yes
set hidden
set background=dark
set expandtab
set wrap linebreak nolist
set cc=85
set textwidth=0
set wrapmargin=0
set formatoptions+=1
set hlsearch
set ruler
set showcmd
set incsearch
set backspace=indent,eol,start
set directory=$HOME/.vim/swap/

runtime! config/**/*.vim

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"
" Initialisation de pathogen
 call pathogen#infect()
 call pathogen#helptags()
"
" Open files in horizontal split
nnoremap <silent> <Leader>s :call fzf#run({
\   'down': '40%',
\   'sink': 'botright split' })<CR>

" Open files in vertical horizontal split
nnoremap <silent> <Leader>v :call fzf#run({
\   'right': winwidth('.') / 2,
\   'sink':  'vertical botright split' })<CR>

" Pour pouvoir enregistrer en tant que root si on a oublié 'sudo' avant
" d'éditer (il faut être sudoer, évidemment ! ) :
"
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
 
" Key bindings : pour des raccourcis de touches simplifiés / personnalisés :
"
"
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
" Default fzf layout
" " - down / up / left / right
 let g:fzf_layout = { 'down': '~30%' }
"
" " In Neovim, you can set up fzf window using a Vim command
" let g:fzf_layout = { 'window': 'enew' }
" let g:fzf_layout = { 'window': '-tabnew' }
" let g:fzf_layout = { 'window': '10new' }
"
" " Customize fzf colors to match your color scheme
" let g:fzf_colors =
" { 'fg':      ['fg', 'Normal'],
"   'bg':      ['bg', 'Normal'],
"   'hl':      ['fg', 'Comment'],
"   'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   'hl+':     ['fg', 'Statement'],
"   'info':    ['fg', 'PreProc'],
"   'border':  ['fg', 'Ignore'],
"   'prompt':  ['fg', 'Conditional'],
"   'pointer': ['fg', 'Exception'],
"   'marker':  ['fg', 'Keyword'],
"   'spinner': ['fg', 'Label'],
"  \ 'header':  ['fg', 'Comment'] }
"


" Key Bindings :
"

map ² :Files<CR>
map <C-a> :NERDTree<CR>
map <C-z> :NERDTreeToggle<CR>

map <C-p> :FzfFiles<CR>
map <C-g> :FzfAg<CR>
map <C-l> :FzfLines<CR>
map <C-s> :OverCommandLine :%s/<CR>

" Insert mode completion
" imap <c-x><c-k> <plug>(fzf-complete-word)
 imap <c-x><c-f> <plug>(fzf-complete-path)
 imap <c-x><c-j> <plug>(fzf-complete-file-ag)
 imap <c-x><c-l> <plug>(fzf-complete-line)

" Replace the default dictionary completion with fzf-based fuzzy completion
inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
"
" space open/closes folds
nnoremap <space> za
"
" move to beginning/end of line
nnoremap B ^
nnoremap E $

" CtrlP settings
 let g:ctrlp_match_window = 'bottom,order:ttb'
 let g:ctrlp_switch_buffer = 0
 let g:ctrlp_working_path_mode = 0
 let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
"

" Les Plugins avec Vundle (mieux que Pathogen ? ) :
"

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sjl/badwolf'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mileszs/ack.vim'
Plugin 'wokalski/autocomplete-flow'

Plugin 'Valloric/YouCompleteMe'

let NERDTreeShowHidden=1
let g:autocomplete_flow#insert_paren_after_function = 0

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


call vundle#end()            " required
filetype plugin indent on    " required

colorscheme molokai

