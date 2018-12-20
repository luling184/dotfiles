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

"見た目
set number
set virtualedit=onemore
set smartindent
set showmatch
set wildmode=list:longest
set vb t_vb=
syntax on

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

command! ToggleDovorakMode call ToggleDvorakMode()))

inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><Left><Left><Left><Left><ESC>4x<S-o>
inoremap [ []<Left>
inoremap [<Enter> []<Left><CR><Left><Left><Left><Left><ESC>4x<S-o>
inoremap ( ()<Left>
inoremap (<Enter> ()<Left><CR><Left><Left><Left><Left><ESC>4x<S-o>
inoremap ' ''<LEFT>
nnoremap == gg=G

set list listchars=tab:\¦\ 

filetype plugin indent on


"マウス
if has('mouse')
    set mouse=a
    if has('mouse_sgr')
        set ttymouse=sgr
    elseif v:version > 703 || v:version is 703 && has('patch632')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif

if &term =~ "screen"
    let &t_ti.= "\eP\e[1 q\e\\"
    let &t_SI.= "\eP\e[5 q\e\\"
    let &t_EI.= "\eP\e[1 q\e\\"
    let &t_te.= "\eP\e[0 q\e\\"
elseif &term =~ "xterm"
    let &t_ti.="\e[1 q"
    let &t_SI.="\e[5 q"
    let &t_EI.="\e[1 q"
    let &t_te.="\e[0 q"
endif

if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"
                
    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction
                                
    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

