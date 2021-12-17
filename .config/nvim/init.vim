call plug#begin('~/.vim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()

lua require("lsp-config") 

set tabstop=2
set shiftwidth=2
set expandtab
set number
set relativenumber

noremap <c-space> :NERDTreeToggle<cr>

autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
autocmd BufWritePre *.go lua goimports(1000)
