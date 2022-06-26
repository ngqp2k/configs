syntax on
syntax enable
set number
set relativenumber
set mouse=a
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set clipboard=unnamed
set splitbelow
set splitright

call plug#begin()
    Plug 'scrooloose/nerdtree'
    Plug 'morhetz/gruvbox'
    Plug 'scrooloose/nerdcommenter'
    Plug 'itchyny/lightline.vim'
call plug#end()


"----------------Colorscheme---------------------
let g:gruvbox_contrast_dark='hard'  

"colorscheme gruvbox
"------------------------------------------------


"----------------NERD Tree-----------------------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeIgnore = ['\.exe$']
let NERDTreeIgnore = ['\.exe$', '\']
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
"------------------------------------------------

"----------------NERD Commenter------------------
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1"
map <C-b> <leader>c<Space>

"------------------Autoload----------------------
autocmd BufNewFile *.cpp 0r ~/templates/template.cpp


" -------------------Bind------------------------
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"------------------------------------------------
