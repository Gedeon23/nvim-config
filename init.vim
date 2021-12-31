if has("nvim")
        let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'ptzz/lf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'neovim/nvim-lspconfig'
Plug 'cohama/lexima.vim'


call plug#end()
