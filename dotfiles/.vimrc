set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'arcticicestudio/nord-vim' " Theme
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'justinj/vim-react-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/syntastic'
Plugin 'briancollins/vim-jst'


call vundle#end()
filetype plugin indent on 
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"

syntax on
set number
set nowrap
set smartindent
set expandtab
set shiftwidth=2
set tabstop=2
set cpoptions+=$
set virtualedit=all
set listchars=tab:▸\ ,eol:¬
set showbreak=↪\
set backspace=2
set hls
set incsearch
set noerrorbells
set visualbell
set nowrap
set ignorecase 
set clipboard=unnamed
let javascript_enable_domhtmlcss = 1


" colorscheme desert
silent! colorscheme nord
set encoding=utf-8
set laststatus=2
set term=xterm-256color
set termencoding=utf-8

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
set t_Co=256

"Syntastic
let g:syntastic_javascript_checkers = ['jsxhint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"gitgutter
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green guifg=darkgreen
highlight GitGutterChange ctermfg=yellow guifg=darkyellow
highlight GitGutterDelete ctermfg=red guifg=darkred
highlight GitGutterChangeDelete ctermfg=yellow guifg=darkyellow

"Ignore ctrl+p
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|bower_components'

"##############################################################################                                                                         
"" Easier split navigation                                                                                                                               
"##############################################################################                                                                         
"
"" Use ctrl-[hjkl] to select the active split!
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>
nmap <leader>bq :bp <BAR> bd #<cr>
nmap <Space> <Plug>(easymotion-s)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

nnoremap <C-L> :noh<CR><C-L>
