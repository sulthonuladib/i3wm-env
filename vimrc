" vi improved / vim configuration
" created by Sulthonul Adib
" github link: github.com/sulthonuladib

set t_Co=256
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

let mapleader = ","

" set your color man!!
colorscheme gruvbox
set background=dark

autocmd Filetype php setlocal shiftwidth=4 tabstop=4

nmap <Leader>c :e $MYVIMRC<cr>

nmap <Leader>f :bn<cr>
nmap <Leader>d :bp<cr>
nmap <Leader>s :BD<cr>

nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l>

nmap <Leader>g <C-]>

nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>b :TagbarToggle<cr>

nmap <Leader><Leader>nt :tabnext<cr>

call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'skwp/greplace.vim'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ervandew/supertab'
Plug 'acoustichero/goldenrod.vim'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'hwartig/vim-seeing-is-believing'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'tmhedberg/matchit'
Plug 'hzchirs/vim-material'
Plug 'joonty/vdebug'
Plug 'tpope/vim-unimpaired'
Plug 'beigebrucewayne/Turtles'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
Plug 'beigebrucewayne/Turtles'
Plug 'tpope/vim-surround'
Plug 'lifepillar/vim-solarized8'
Plug 'junegunn/goyo.vim'
Plug 'miyakogi/seiya.vim'
Plug 'sjl/vitality.vim'
Plug '2072/PHP-Indenting-for-VIm'

call plug#end()


nmap <Leader>t :NERDTreeToggle<cr>
nmap <Leader>n :NERDTreeFind<cr>
let NERDTreeHijackNetrw = 0

set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

nmap <Leader>w :StripWhitespace<cr>

" Enable seeing-is-believing mappings only for Ruby
augroup seeingIsBelievingSettings
  autocmd!

  autocmd FileType ruby nmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)
  autocmd FileType ruby xmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)

  autocmd FileType ruby nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby imap <buffer> <F4> <Plug>(seeing-is-believing-mark)

  autocmd FileType ruby nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
  autocmd FileType ruby imap <buffer> <F5> <Plug>(seeing-is-believing-run)
augroup END

imap jj <Esc>
" nmap <leader>r :CtrlPMRUFiles<cr>
" nmap <leader>b :CtrlPBuffer<cr>
nmap <leader>r :Files<cr>
nmap <leader>b :Buffers<cr>
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:20,results:20'

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

set splitbelow
set splitright

au FocusGained * call gitgutter#all()
