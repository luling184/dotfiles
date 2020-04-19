"文字コード
set fenc=utf-8
set ambiwidth=double
set wildmenu

"バックアップ
set nobackup
set noswapfile

set hidden
set autoread
set noerrorbells
set clipboard=unnamed

"見た目
set number
set virtualedit=onemore
set smartindent
set showmatch
set wildmode=list:longest
set vb t_vb=
syntax enable
highlight LineNr ctermfg=239
set termguicolors

" 行番号の色を設定
hi LineNr ctermbg=0 ctermfg=0
hi CursorLineNr ctermbg=4 ctermfg=0
set cursorline
hi clear CursorLine

"タブ
set expandtab
set tabstop=4
set shiftwidth=4

"検索
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

filetype plugin indent on

"ターミナルモード
tnoremap <silent> <ESC> <C-\><C-n>
tnoremap <silent> <C-[> <C-\><C-n>
set sh=zsh

"マウス
if has('mouse')
    set mouse=a
endif

" キーバインド
inoremap <silent> jj <ESC>

" Plugin
  call plug#begin()

  "NEERDTree
  
  " 補完
  Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
  " 閉じ括弧の補完
  Plug 'cohama/lexima.vim'
  " インデントラインの表示
  Plug 'Yggdroot/indentLine'
  Plug 'flazz/vim-colorschemes'
  Plug 'ryanoasis/vim-devicons'

  Plug 'dracula/vim'

  Plug 'fatih/vim-go'
  Plug 'mattn/sonictemplate-vim'
  Plug 'scrooloose/nerdtree'
  Plug 'itchyny/lightline.vim'
"  Plug 'vim-airline/vim-airline'
"  Plug 'vim-airline/vim-airline-themes'

  Plug 'leafgarland/typescript-vim'

  call plug#end()


" Required:
filetype plugin indent on
" set background=dark
colorscheme molokai

let g:go_version_warning = 0
let g:sonictemplate_vim_template_dir = [
    \ '~/.config/nvim/template'
    \]
let g:deoplete#enable_at_startup = 1
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows = 1
"let g:NERDTreeDirArrowExpandable  = '>'
"let g:NERDTreeDirArrowCollapsible = '▼'
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:highlighter#auto_update = 2
"End dein Scripts-------------------------

" vim -b : edit binary using xxd-format!
augroup BinaryXXD
  autocmd!
  autocmd BufReadPre  *.bin let &binary =1
  autocmd BufReadPost * if &binary | silent %!xxd -g 1
  autocmd BufReadPost * set ft=xxd | endif
  autocmd BufWritePre * if &binary | %!xxd -r | endif
  autocmd BufWritePost * if &binary | silent %!xxd -g 1
  autocmd BufWritePost * set nomod | endif
augroup END


" SyntaxInfo
function! s:get_syn_id(transparent)
  let synid = synID(line("."), col("."), 1)
  if a:transparent
    return synIDtrans(synid)
  else
    return synid
  endif
endfunction
function! s:get_syn_attr(synid)
  let name = synIDattr(a:synid, "name")
  let ctermfg = synIDattr(a:synid, "fg", "cterm")
  let ctermbg = synIDattr(a:synid, "bg", "cterm")
  let guifg = synIDattr(a:synid, "fg", "gui")
  let guibg = synIDattr(a:synid, "bg", "gui")
  return {
        \ "name": name,
        \ "ctermfg": ctermfg,
        \ "ctermbg": ctermbg,
        \ "guifg": guifg,
        \ "guibg": guibg}
endfunction
function! s:get_syn_info()
  let baseSyn = s:get_syn_attr(s:get_syn_id(0))
  echo "name: " . baseSyn.name .
        \ " ctermfg: " . baseSyn.ctermfg .
        \ " ctermbg: " . baseSyn.ctermbg .
        \ " guifg: " . baseSyn.guifg .
        \ " guibg: " . baseSyn.guibg
  let linkedSyn = s:get_syn_attr(s:get_syn_id(1))
  echo "link to"
  echo "name: " . linkedSyn.name .
        \ " ctermfg: " . linkedSyn.ctermfg .
        \ " ctermbg: " . linkedSyn.ctermbg .
        \ " guifg: " . linkedSyn.guifg .
        \ " guibg: " . linkedSyn.guibg
endfunction
command! SyntaxInfo call s:get_syn_info()

set t_Co=256
set laststatus=2
set guifont=*
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \ }
set ambiwidth=single
let g:webdevicons_enable_nerdtree = 1

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
 
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
 
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
 
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
 
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <c-j> <Plug>(coc-snippets-expand-jump)

highlight Pmenu guifg=#ccb714 guibg=#2e2f32
highlight PmenuSel guifg=#f7fcfe guibg=#b70306
