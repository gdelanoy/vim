"  CONSIGNES D'INSTALLATION
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

" git clone https://github.com/VundleVim/Vundle.vim.git
" ~/.vim/bundle/Vundle.vim
"
" Une fois ceci fait, lance la commande :PluginUpdate dans vim, et relance-le.

set nu
set nocompatible

" Menus I like :-)
" This must happen before the syntax system is enabled
aunmenu Help.
aunmenu Window.
let no_buffers_menu=1
set mousemodel=popup
set autowrite
set scrolloff=3

" Better modes.  Remeber where we are
set viminfo=!,'100,\"100,:20,<50,s10,h,n~/.viminfo

" The PC is fast enough, do syntax highlight syncing from start
autocmd BufEnter * :syntax sync fromstart

set mouse-=a
filetype off
" filetype plugin indent on
syntax enable

" Options diverses et variées  :
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
set whichwrap=<,>,[,]]
set nostartofline
set wildmode=list:full
set expandtab
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
set showcmd
set incsearch
set backspace=indent,eol,start
set pastetoggle=<F2>

"split navigations
set splitbelow
set splitright

set history=10000
set title

" Désactiver les options de swap et de backup
set directory=$HOME/.vim/swap//
set backupdir=$HOME/.vim/.backup//
" "set nobackup
set nowb

" Indentation :
set autoindent
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set smarttab
set softtabstop=4

" " Le découpage des folders se base sur l'indentation
set foldmethod=indent
" " 12 niveaux d'indentation par défaut pour les folders
set foldlevel=12
"

" Correction orthographique en français :
" set spelllang=fr
" set spell

" Search options :
set incsearch
set hlsearch
set ignorecase
set smartcase

" Text-rendering options :
set linebreak

set undofile   " Maintain undo history between sessions
set undodir=$HOME/.vim/undodir

" Remapping de touches :
"
" Déplacer la ligne en cours vers le haut ou vers le bas :
"

nnoremap <c-j> :m .+1<CR>==
nnoremap <c-k> :m .-2<CR>==
inoremap <c-j> <Esc>:m .+1<CR>==gi
inoremap <c-k> <Esc>:m .-2<CR>==gi
vnoremap <c-j> :m '>+1<CR>gv=gv
vnoremap <c-k> :m '<-2<CR>gv=gv

" La touche Leader est le ² :
"

let g:mapleader='²'

" Effacer la ligne courante :
nnoremap <leader>d dd
" Recopier le paragraphe en cours :
nnoremap <leader>cp yap<S-}>p
" Indenter tout le paragraphe en cours :
nnoremap <leader>a ip
" Quitter vim :
noremap <leader>q :q!<cr>
noremap <leader>x :wq<cr>
" Enregistrer :
nnoremap <leader>w :w<cr>
inoremap <leader>w <C-c>:w<cr>
"
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>

" Les abréviations peuvent corriger tes fautes de frappe, ou automatiser ta
" frappe :
"

abbr dng² Bien cordialement,\n\n-\nGuillaume Delanoy\nguillaume@delanoy.fr
abbr dmg² Bien cordialement,\n\n-\nGuillaume Delanoy\ngdelanoy@gmail.com
abbr ? ¿
abbr sz² ß
abbr c² ©
abbr cr² ®
abbr ç² Ç
abbr é² É
abbr è² È
abbr ù² Ù
abbr à² À
abbr ae² æ
abbr oe² œ
abbr aa² Aurélie-Anne
abbr adg² 16 / 6, square Jean Monnet 59120 Loos
abbr ajd² aujourd'hui
abbr bisou² (づ￣ ³￣)づ
abbr bjr² bonjour
abbr d² Delanoy
abbr enlum² (((¯`·._.·(¯`·._.· Text ·._.·´¯)·._.·´¯)))
abbr g² Guillaume
abbr gd² Guillaume Delanoy
abbr gdm² guillaume@delanoy.fr
abbr ge² ¯\\_(ツ)_/¯
abbr ggm² gdelanoy@gmail.com
abbr magie² (∩｀-´)⊃━☆ﾟ.･｡☆ﾟ.･｡ﾟ)
abbr meh² ╭∩╮（︶︿︶）╭∩╮
abbr r² répondre à
abbr table² (╯°□°）╯︵ ┻━┻)
abbr zik² ¸¸♬·¯·♩¸¸♪·¯·♫¸¸Happy Birthday !¸¸♬·¯·♩¸¸♪·¯·♫¸¸
abbr ;)² 😉
abbr :/² 😕
abbr :)² 😃
abbr alien² 👽
abbr angel² 😇
abbr apes² 🙈 🙉 🙊
abbr arbre² 🌳
abbr arm² 💪
abbr beer² 🍻
abbr biohazard² ☣
abbr biz² 😘
abbr boom² 💥
abbr brain² 🧠
abbr bwa² 🤪
abbr cat² 🐈
abbr champ² 🍾
abbr check² ✔
abbr clap² 👏
abbr clown² 🤡
abbr cold² 🥶
abbr culture² 🧐
abbr de² 🇩🇪
abbr devil² 😈
abbr dizzy² 🥴
abbr down² 👇
abbr eyes² 👀
abbr fear² 😱
abbr fire² 🔥
abbr fist² ✊
abbr fmoon² 🌝
abbr fr² 🇫🇷
abbr frite² 🍟
abbr fuck² 🖕
abbr fusee² 🚀
abbr gb² 🇬🇧
abbr gyro² 🚨
abbr heart² 💖
abbr heyes² 😍
abbr hot² 🥵
abbr hug² 🤗
abbr kiss² 💋
abbr left² 👈
abbr lol² 😄
abbr lys² ⚜
abbr mask² 😷
abbr metal² 🤘
abbr mindblown² 🤯
abbr money² 💰
abbr nerd² 🤓
abbr no² ⛔
abbr notes² 🎶
abbr nuclear² ☢
abbr ok² 👌
abbr om² 🕉
abbr party² 🥳
abbr party² 🥳
abbr pasta² 🍝
abbr peace² ☮
abbr phone² ☎
abbr pig² 🐽
abbr poop² 💩
abbr popcorn² 🍿
abbr pray² 🙏
abbr rage² 🤬
abbr raja² 🧘
abbr right² 👉
abbr rofl² 🤣
abbr rose² 🌹
abbr santa² 🎅
abbr shiny² ✨
abbr skull² ☠
abbr smirk² 😏
abbr sob² 😭
abbr star² 🌠
abbr sunglass² 😎
abbr sushi² 🍣
abbr swag² 😅
abbr tada² 🎉
abbr think² 🤔
abbr titre² 📙
abbr trek² 🖖
abbr unicorn² 🦄
abbr up² 👆
abbr us² 🇺🇸
abbr vomit² 🤮
abbr wave² 👋
abbr wink² 😉
abbr world² 🌍
abbr wut² 😳
abbr (y) 👍
abbr yum² 😋
abbr zombie² 🧟
abbr zzz² 💤

" Copy & paste to system clipboard with <Leader>p and <Leader>y:

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Type <Leader>o to open a new file:

nnoremap <Leader>o :CtrlP<CR>

" Enter visual line mode with <Leader><Leader>:

nmap <Leader><Leader> V

"replace the word under cursor
nnoremap <leader>* :%s/\<<c-r><c-w>\>//g<left><left>

"autoclose tags
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
"inoremap " ""<Left>

" This allows me to use the following search-and-replace flow:
"
"    I search things usual way using /something
"    I hit cs, replace first match, and hit <Esc>
"    I hit n.n.n.n.n. reviewing and replacing all matches

vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
 nnoremap <space> za
 let g:SimpylFold_docstring_preview=1

 set encoding=utf-8
 let g:ycm_autoclose_preview_window_after_completion=1
 map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:AutoPairsFlyMode = 1
" Syntastic
 set statusline+=%#warningmsg#
 set statusline+=%*
 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 0

" Preconfig

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Restore cursor position to where it was before
augroup JumpCursorOnEdit
   au!
   autocmd BufReadPost *
            \ if expand("<afile>:p:h") !=? $TEMP |
            \   if line("'\"") > 1 && line("'\"") <= line("$") |
            \     let JumpCursorOnEdit_foo = line("'\"") |
            \     let b:doopenfold = 1 |
            \     if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
            \        let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
            \        let b:doopenfold = 2 |
            \     endif |
            \     exe JumpCursorOnEdit_foo |
            \   endif |
            \ endif
   " Need to postpone using "zv" until after reading the modelines.
   autocmd BufWinEnter *
            \ if exists("b:doopenfold") |
            \   exe "normal zv" |
            \   if(b:doopenfold > 1) |
            \       exe  "+".1 |
            \   endif |
            \ endif
augroup END

" See your crazy vim ninja cmds
set showcmd
" Allow backspacing over everything in INSERT mode
set backspace=indent,eol,start

" Show ruler and command visual aid
set ruler

" Make use of the "status line" to show possible completions of command line commands,
" file names, and more. Allows to cycle forward and backward throught the list.
" This is called the "wild menu".
 set wmnu

" Turn off beeping
set vb

" Copier-coller avec F12 :
set pastetoggle=<F12>


runtime! config/**/*.vim

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugin 'neoclide/coc.nvim'
", {'branch': 'release'}}
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

" Key Bindings :
"
map <C-f> :Files<CR>
map <C-z> :NERDTreeToggle<CR>

" map <C-p> :FzfFiles<CR>
" map <C-g> :FzfAg<CR>
" map <C-l> :FzfLines<CR>
" map <C-s> :OverCommandLine :%s/<CR>
"
"Insert mode completion
" imap <c-x><c-k> <plug>(fzf-complete-word)
" imap <c-x><c-f> <plug>(fzf-complete-path)
" imap <c-x><c-j> <plug>(fzf-complete-file-ag)
" imap <c-x><c-l> <plug>(fzf-complete-line)

" Replace the default dictionary completion with fzf-based fuzzy completion
inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
"aaaaaaaaaa:
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
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
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
Plugin 'vimwiki/vimwiki'

let NERDTreeShowHidden=1
let g:autocomplete_flow#insert_paren_after_function = 0

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


call vundle#end()            " required
filetype plugin indent on    " required

colorscheme molokai

