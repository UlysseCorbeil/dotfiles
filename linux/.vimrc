"" Plugins

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.config/fzf', 'do': './install --all' } " FZF
Plug 'junegunn/fzf.vim'

Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' } " Js integration

Plug 'chriskempson/base16-vim'                       " Theme

Plug 'sheerun/vim-polyglot'                          " Autocomplete for different languages

Plug 'arcticicestudio/nord-vim'                      " Nord

Plug 'itchyny/lightline.vim'                         " Status line

Plug 'scrooloose/nerdtree'                           " Folder nav

Plug 'Konfekt/vim-alias'                             " Alias plugin

Plug 'jiangmiao/auto-pairs'                          " Auto close brackets

Plug 'neoclide/coc.nvim', {'branch': 'release'}      " Intellisense vim auto-complete

Plug 'ryanoasis/vim-devicons'                        " Icons for IDE (Always last)

call plug#end()

autocmd vimenter * NERDTree

" vars
set termguicolors
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
colorscheme nord
let g:lightline = { 'colorscheme': 'nord' }

set t_Co=256
set background=dark

" Keybindings
let mapleader ="\<Space>"
nnoremap <silent> <leader><space> :Files<CR>

"highlight Normal4ctermbg=NONE
highlight nonText ctermbg=NONE

syntax on
set exrc
set tabstop=4
set softtabstop=4
set shiftwidth=4
set visualbell
set noexpandtab
set nocompatible
filetype off
filetype plugin indent on
set modelines=0
set number
set ruler
set encoding=utf-8
set guifont=Roboto\ Mono\ Regular

" Whitespace
set nowrap
set textwidth=79
set formatoptions=tcqrn1
set shiftwidth=2
set expandtab
set noshiftround
set ttyfast
set laststatus=2
set showmode
set showcmd

augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

autocmd VimEnter * wincmd p

" Less compile
autocmd FileWritePost,BufWritePost *.less :call LessCSSCompress()
function! LessCSSCompress()
  let cwd = expand('<afile>:p:h')
  let name = expand('<afile>:t:r')
  if (executable('lessc'))
    cal system('lessc '.cwd.'/'.name.'.less > '.cwd.'/'.name.'.css &')
  endif
endfunction

" Nerdtree
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeChDirMode=2
let g:NERDTreeDirArrowExpandable = '├'
let g:NERDTreeDirArrowCollapsible = '└'
let g:NERDTreeMapActivateNode = '<tab>'
let NERDTreeQuitOnOpen = 1
map <C-e> :NERDTreeToggle<CR> 
autocmd VimEnter * wincmd p 

" Aliases
nnoremap ; :
vnoremap ; :
