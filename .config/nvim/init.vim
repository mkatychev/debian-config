" Settings
set expandtab
set hidden
set mouse=n
set relativenumber number
set shiftwidth=4
set tabstop=4
set termguicolors
set timeoutlen=1000
set ttimeoutlen=0
set t_8b=[48;2;%lu;%lu;%lum
set t_8f=[38;2;%lu;%lu;%lum
" unique computer config
source ~/.nvimrc
"set cedit
" Plugins
filetype plugin on
call plug#begin('~/.vim/plugged')
" '<,'>sort/.*\//

Plug 'haya14busa/incsearch.vim'
Plug 'miconda/lucariox.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-python/python-syntax'
Plug 'luochen1990/rainbow'
Plug 'rust-lang/rust.vim'
Plug 'godlygeek/tabular'
Plug 'ap/vim-css-color'
Plug 'machakann/vim-highlightedyank'
Plug 'elzr/vim-json'
Plug 'rakr/vim-one'
Plug 'vimjas/vim-python-pep8-indent'
Plug 'niklasl/vim-rdf'
Plug 'tpope/vim-repeat'
Plug 'rvesse/vim-sparql'
Plug 'tpope/vim-surround'
Plug 'cespare/vim-toml'
Plug 'mattn/webapi-vim'
Plug 'fatih/vim-go'
Plug 'w0rp/ale'


call plug#end()
" Color Schemes
colorscheme one
set background=dark
call one#highlight('LineNr', '616162', 'white', '')
call one#highlight('Normal', '', '1d2025', 'none')
call one#highlight('rustModPathSep', '', '1d2025', 'none')
call one#highlight('vimLineComment', '', '', 'italic')
highlight Comment gui=italic
" Global Vars
let g:highlightedyank_highlight_duration = 200
let g:python3_host_prog = '/usr/local/Cellar/python/3.7.0/Frameworks/Python.framework/Versions/3.7/bin/python3.7'
let g:python_host_prog = '/usr/local/bin/python2'
let g:vim_json_syntax_conceal = 0
let g:rainbow_active = 0
let g:rust_conceal_mod_path = 1
let g:solarized_termcolors=256
let g:rainbow_conf = {
            \   'separately': {
            \       'rust': {
            \           'parentheses': ['start=/(/ end=/)/', 'start=/</ end=/>/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold'],
            \       }
            \   }
            \}
let g:NERDCustomDelimiters = { 'sparql': { 'left': '# '} }
set viewoptions-=options
" Mappings
inoremap <silent><F2> <C-o>:RainbowToggle<CR>
map Y y$ 
nnoremap <C-\> :NERDTreeToggle<CR>
nnoremap <leader>O O<ESC>O
nnoremap <leader>o o<cr>
noremap <M-/> :call NERDComment(0,"toggle")<CR>
noremap <silent><F2> :RainbowToggle<CR>
" Print object syntax inheritance
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
autocmd FileType sparql setlocal tabstop=2 expandtab
autocmd FileType sparql setlocal shiftwidth=2 expandtab
au! BufNewFile,BufRead *.json,*.geojson set filetype=json

com! FormatJSON %!python -m json.tool
