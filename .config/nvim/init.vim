"Plugins
call plug#begin('~/.config/nvim/vim-plug')

"Colourscheme + wal integration
Plug 'dylanaraps/wal.vim'

"Vim hard-mode
Plug 'takac/vim-hardtime'

"Latex stuff
Plug 'lervag/vimtex'

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

"SingleCompile
Plug 'xuhdev/SingleCompile'
call plug#end()

"Use colourscheme
syntax on
colorscheme wal

"Use relative line numbers
:set relativenumber
:set rnu

"Single compile key-mappings
"nmap <F5> :SCCompile<cr>
nmap <F6> :SCCompileRun<cr>

nmap <F5> :make<cr>

"Use hard-mode in every buffer
"let g:hardtime_default_on = 1

"Change tabs to 4 spaces
:set tabstop=4
:set shiftwidth=4
:set expandtab

setlocal spell
set spelllang=en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

