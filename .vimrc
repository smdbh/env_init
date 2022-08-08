filetype on                    

" ---- vim plug in ---------------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://gitee.com/ovoll/vim-plug/raw/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" add plug-in items
Plug 'vim-airline/vim-airline' 
Plug 'scrooloose/nerdcommenter'
Plug 'preservim/nerdtree'
call plug#end()


" ---- key bindings --------------------------------------
let mapleader=","

" save quit reload
noremap <S-r>     	:w<CR>:source $MYVIMRC<CR>
nmap    <leader>qq  :q!<CR>
nmap    <leader>ww  :wq!
nmap    <leader>WW  :w !sudo tee %

" move multi-lines
noremap  J  10j
noremap  K  10k


" nmap <C-_>			,c<space><esc>
" :nmap <F2>       :cp <CR> 
" :nmap <F3>       :cn <CR>


" split window create and move
nmap <leader>sr   	:set splitright<CR>:vsplit<CR>
nmap <C-o>          <C-w>w 


" resize window
nmap <C-left>   	:vertical resize-5<CR>
nmap <C-right>   	:vertical resize+5<CR>


" tab window create and move
" use gt/gT to switch tab
nmap <leader>tn     :tabe<space>
nmap <leader>tc     :tabc<cr>
nmap <S-left>       gt
nmap <S-right>      gT
nmap <C-=>          gT
cmap tn             tabe #<

" see old files
nmap <leader>ho     :oldfiles<CR>


nmap <C-f>     		:Ag<space> 


" ---- attr settings -------------------------------------
set term=xterm-256color
set t_Co=256
syntax on
set nu rnu
set wrap
" show command choice
set wildmenu
set ruler
set incsearch
set hlsearch
set smartindent
" colorscheme pablo_my
"set laststatus=2
set cul
set tabstop=4
set smartcase
set shiftwidth=4
set scrolloff=5
" set listchars=tab:>-,space:.,
" set list
hi cursorline cterm=NONE "ctermbg=DarkMagenta


" ---- plug in settings ---------------------------------

"  nerd settings
"  <leader>cc   comment
"  <leader>cu   uncomment
"  <leader>cm   toggle
let g:NERDSpaceDelims = 1

" nerd tree 
nmap tt :NERDTreeToggle<cr>
let g:NERDTreeHidden=0


:nnoremap <Leader>ff :FufFile <CR>     "fuzzy finder

