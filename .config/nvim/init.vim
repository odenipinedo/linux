:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set completeopt-=preview "for no previews

call plug#begin() "https://github.com/junegunn/vim-plug

Plug 'https://github.com/vim-airline/vim-airline' "status bar
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary' "commenting gc & gcc
Plug 'tpope/vim-surround' "surrounding ysiw)
Plug 'ap/vim-css-color' "CSS color preview
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ryanoasis/vim-devicons' "developer icons
Plug 'tc50cal/vim-terminal'
Plug 'terryma/vim-multiple-cursors' "CTRL + N for multiple cursors
Plug 'preservim/tagbar' "tagbar for code navigation -req Exuberant ctags
Plug 'neoclide/coc.nvim' "autocompletion -req see Notes below

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

:colorscheme nord 

let g:NERDTreeArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

"setup tab autocomplete for coc.nvim
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" --- Notes ---
"  vim-plug
" :PlugClean - to remove plugins from system that have been removed from list
" :PlugInstall - to install plugins added to this list
" :UpdateRemotePlugins - update all plugins on this list to latest version
"
"  coc.nvim (Ubuntu 20.04 lts)
"  https://github.com/nodesource/distributions
"  > sudo npm install -g yarn
"  - requires build of plugin located in
"       ~/.local/share/nvim/plugged/ or
"   ~/.config/nvim/plugged/
"  > yarn install [must be done inside the .../plugged/ directory]
"  > yarn build
"
"  - install plugins
"   :CocInstall coc-actions
"   :CocInstall coc-markdownlint
" - :CocInstall coc-markdown-preview-enhanced
" - :CocCommand markdown-preview-enhanced.openPreview
" - :CocCommand markdown-preview-enhanced.syncPreview
" - :CocList --input=markdown-preview-enhanced. commands
" :CocInstall coc-python
"  > sudo apt install python3-pip
"  > pip3 install jedi
" :CocInstall coc-r-lsp
"  - install and run R
"  > install.packages("languageserver")
" :CocInstall coc-sql
" :CocInstall coc-snippets
"  :CocCommand snippets.edit... FOR EACH FILE TYPE
