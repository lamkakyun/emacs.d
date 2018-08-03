""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim " run time path
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair.
Plugin 'vim-scripts/taglist.vim'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'wincent/command-t'
Plugin 'Chiel92/vim-autoformat'
Plugin 'kien/ctrlp.vim'
Plugin 'Shougo/neocomplete.vim'
" Plugin 'Shougo/deoplete.nvim'
" if !has('nvim')
"     Plugin 'roxma/nvim-yarp'
"     Plugin 'roxma/vim-hug-neovim-rpc'
" endif
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
"Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
"Plugin 'mxw/vim-jsx'

call vundle#end()            " required
filetype plugin indent on    " required

filetype indent on      " load filetype-specific indent files , /usr/local/share/vim/vim80/indent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " close NERDTree when winow closed
let NERDTreeShowLineNumbers=1
let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ "Unknown"   : "?"
            \ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" command-t settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplete settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable AutoComplPop.
"  let g:acp_enableAtStartup = 0
"  " Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" Enable omni completion.
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" emmet Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 使用tab 触发
" let g:user_emmet_expandabbr_key='<Tab>'
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" for vim -jsx
"let g:jsx_ext_required = 1 " 只有jsx 文件触发， reactjs 的 语法高亮

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu
" colorscheme badwolf         " awesome colorscheme
syntax enable

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab " tab are spaces
set smarttab

set showcmd " show cmd in bottom bar
set wildmenu
set cursorline " highlight current line
set lazyredraw
set showmatch
set incsearch
set hlsearch
" vim 命令或者提示之类的 不区别大小写
set ignorecase
set smartcase
" set fileformats=unix,dos
"set listchars=tab:>-,trail:-
" set list " show empty characters
" set paste " 解决换行自动注释的问题

"let mapleader=','
let mapleader=','
" Mapping setting
" map <leader>b :buffers<CR>
map <leader>t :tabnew .<CR>
map <leader>n :NERDTreeToggle<CR>
" map <leader>tl :TListToggle<CR>

map <left> <C-w><left>
map <right> <C-w><right>
map <up> <C-w><up>
map <down> <C-w><down>

map <leader>2 :vsp<CR>
map <leader>d :YcmDiags<CR>
map <leader>y :YcmCompleter<tab>
map <leader>j :YcmCompleter GoTo<CR>
map <leader>o :CommandT<CR>
"map <leader>h :e /home/jet/.vimrc<CR>
map <leader>h :vsp /opt/vim/vimrc<CR>
map <leader>ff :Autoformat<CR>
map <leader>s :CtrlP ./<CR>
" toggle 复制模式
nnoremap <leader>p :set paste!<CR>

map <F2> :bprevious<CR>
map <F3> :bnext<CR>
map <F4> :buffers<CR>

map <F6> :tabprevious<CR>
map <F7> :tabnext<CR>
map <F8> :tabs<CR>


" common useful shortcuts 
" 1. C-z suspend vim
