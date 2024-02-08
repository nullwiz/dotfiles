" set nocompatible
" runtime macros/matchit.vim
" filetype indent plugin on
" set is
" set encoding=utf-8
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" let g:ackprg = 'ag --nogroup --nocolor --column'
" nnoremap <C-n> :NvimTreeToggle<CR>
" nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <leader>n :NvimTreeFindFile<CR>
" " kyazdani42/nvim-tree.lua {{{
" let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ]
" let g:nvim_tree_gitignore = 1
" " let g:nvim_tree_auto_close = 1
" " let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ]
" let g:nvim_tree_quit_on_open = 1
" let g:nvim_tree_indent_markers = 1
" let g:nvim_tree_git_hl = 1
" let g:nvim_tree_highlight_opened_files = 1
" let g:nvim_tree_group_empty = 1
" " let g:nvim_tree_lsp_diagnostics = 1
" " ========== relative line nums
" set rnu
" " ========== Debug
" Plugin 'dstein64/vim-startuptime' 
" "=========
" Plugin 'neovim/nvim-lspconfig'
" "
" ""========== autocomplete
" Plugin 'styled-components/vim-styled-components'
" Plugin 'mattn/emmet-vim'
" Plugin 'ervandew/supertab'
" Plugin 'valloric/youcompleteme'
" Plugin 'luochen1990/rainbow'
" Plugin 'fatih/vim-go'
" Plugin 'wellle/context.vim'
" let g:rainbow_active = 1 "0
" let mapleader = ","
" " ========= Formatter
" Plugin 'darrikonn/vim-gofmt'
" " ========= snippets
" Plugin 'honza/vim-snippets'
" Plugin 'SirVer/ultisnips'
" Plugin 'Yggdroot/indentLine'
" Plugin 'mhinz/vim-startify'
" let g:indentLine_char = '.'
" " ========= cheatsheet
" Plugin 'sudormrfbin/cheatsheet.nvim'
" nnoremap <leader>cheat :Cheatsheet<cr>
" "======== file management
" " File Management
" Plugin 'nvim-lua/popup.nvim'
" Plugin 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
" Plugin 'nvim-telescope/telescope-file-browser.nvim'
" Plugin 'nvim-tree/nvim-tree.lua'
" Plugin 'ThePrimeagen/harpoon'
" " https://github.com/nvim-treesitter/nvim-treesitter/issues/1111
" Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plugin 'JoosepAlviste/nvim-ts-context-commentstring'
" Plugin 'MaxMEllon/vim-jsx-pretty' " fix indentation in jsx until treesitter can
" Plugin 'jxnblk/vim-mdx-js'
" " Status Line
" Plugin 'hoob3rt/lualine.nvim'
" Plugin 'kyazdani42/nvim-web-devicons'
" "======== snippets
" Plugin 'epilande/vim-es2015-snippets'
" Plugin 'epilande/vim-react-snippets'
" Plugin 'easymotion/vim-easymotion'
"
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'
"
" " better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<Tab>"
" let g:UltiSnipsJumpForwardTrigger = "<Tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-Tab>"
"
" Plugin 'tpope/vim-dispatch'
" Plugin 'jgdavey/tslime.vim'
" Plugin 'kana/vim-textobj-user'
" vmap <C-c><C-c> <Plug>SendSelectionToTmux
" nmap <C-c><C-c> <Plug>NormalModeSendToTmux
" nmap <C-c>r <Plug>SetTmuxVars
"
" "let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
" let g:rspec_command = "Dispatch rspec {spec}"
" map <Leader>vp :VimuxPromptCommand<CR>
" map <Leader>vl :VimuxRunLastCommand<CR>
" map <Leader>vz :VimuxZoomRunner<CR>
"
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>
" set splitbelow
" set splitright
"
" Plugin 'leafgarland/typescript-vim'
" Plugin 'mxw/vim-jsx'
" Plugin 'pangloss/vim-javascript'
"
"
" autocmd QuickFixCmdPost [^l]* nested cwindow
" autocmd QuickFixCmdPost    l* nested lwindow
"
" let g:typescript_ignore_browserwords = 1
" let g:typescript_ignore_typescriptdoc = 1
" " vim-rspec mappings
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>
"
" " ========== colorschemes
" Plugin 'flazz/vim-colorschemes'
" Plugin 'cakebaker/scss-syntax.vim'
" Plugin 'craigemery/vim-autotag'
" Plugin 'edkolev/tmuxline.vim'
" Plugin 'michaeljsmith/vim-indent-object'
"
" " =========== git
" Plugin 'tpope/vim-fugitive'
" Plugin 'airblade/vim-gitgutter'
" Plugin 'jparise/vim-graphql'
"
" " ==== enable matchit
" " =========== markdown
" Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdown'
" Plugin 'yonchu/accelerated-smooth-scroll'
" Plugin 'vim-scripts/IndexedSearch'
" Plugin 'itspriddle/vim-jquery'
" Plugin 'tpope/vim-haml'
" Plugin 'junegunn/goyo.vim'
" Plugin 'ecomba/vim-ruby-refactoring'
" Plugin 'vim-ruby/vim-ruby'
" Plugin 'tpope/vim-bundler'
" "========= syntax helpers
" Plugin 'hail2u/vim-css3-syntax'
" Plugin 'ap/vim-css-color'
" Plugin 'tpope/vim-commentary'
" Plugin 'junegunn/fzf.vim'
" Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plugin 'Chiel92/vim-autoformat'
" Plugin 'octol/vim-cpp-enhanced-highlight'
" Plugin 'jiangmiao/auto-pairs'
" Plugin 'alvan/vim-closetag'
"   let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.vue,*.php,*.phtml,*.js,*.jsx,*.coffee,*.erb'
"
" Plugin 'dense-analysis/ale'
" " ===== ale linter 
" let g:ale_linters={
"       \ 'python' : ['ruff'],
"       \ 'go' : ['gofmt'],
"       \}
" "========= rails
" Plugin 'kchmck/vim-coffee-script'
" Plugin 'thoughtbot/vim-rspec'
" Plugin 'tpope/vim-rails'
" Plugin 'ngmy/vim-rubocop'
" " ========= navigation
" Plugin 'christoomey/vim-tmux-navigator'
" Plugin 'zhaocai/GoldenView.Vim'
"   let g:goldenview__enable_default_mapping = 0
" Plugin 'benmills/vimux'
"   " vimux binding
"   map <Leader>vp :VimuxPromptCommand<CR>
"   nmap <F8> :TagbarToggle<CR>
"
" " ======= fuzzy find
" Plugin 'nvim-lua/plenary.nvim'
" Plugin 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
" " Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"
" " ======= extras
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'majutsushi/tagbar'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'mileszs/ack.vim'
" if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
" endif
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
"
"
" call vundle#end()            " required
" filetype plugin indent on    " required
"
" " ============= extra settings
" syntax on
"
" " tabs to 2 spaces
" " set smartindent
" set tabstop=2
" set shiftwidth=2
" set expandtab
" set ruler
" set hidden
" :set guioptions-=m " remove menu bar
" :set guioptions-=T " remove toolbar
" :set guioptions-=r " remove right-hand scroll bar
" :set guioptions-=L " remove left-hand scroll bar
" ":set lines=999 columns=999
" set shortmess+=A " disable swap file warning
"
" " hybrid line numbers
" set number relativenumber
" augroup numbertoggle
"   autocmd!
"   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"   autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
" augroup END
"
" " colorschemes
" " Dark: monokai-chris, gruvbox
" " Light: ChocolatePapaya
" Plugin 'morhetz/gruvbox'
" colorscheme gruvbox
"   let g:gruvbox_contrast_dark='default'
"   let g:gruvbox_contrast_light='default'
" " split below and right feels more natural
" set splitbelow
" set background=dark
" " no wrapping
" set nowrap
"
" " allow backspace immediately after insert
" set bs=2
"
" " useful aliases
" cnoreabbrev W w
" cnoreabbrev Q q
"
" " save undo in a file
" set undofile
" set undodir=~/.vim/undo
" set undolevels=1000
" set undoreload=10000
"
"
" " == Setups 
" " nvim-treesitter {{{
" lua << EOF
" require('nvim-treesitter.configs').setup({
"   ensure_installed = { 'html', 'javascript', 'typescript', 'tsx', 'css', 'json' },
"   -- ensure_installed = "all", -- or maintained
"   highlight = {
"     enable = true,
"     additional_vim_regex_highlighting = true
"   },
"   indent = {
"     enable = false
"   },
"   context_commentstring = {
"     enable = true
"   }
" })
" EOF
" "}}}
"
" " Telescopioum {{{
" lua << EOF
" require('telescope').setup({
"   defaults = {
"     mappings = {
"       i = {
"         ["<esc>"] = require('telescope.actions').close
"       },
"     },
"     file_ignore_patterns = { 'node_modules', 'dist', 'build', '*/node_modules/*', '*/dist/*', '*/build/*' },
"   }
" }
" )
" EOF
" "}}}
"
" " Plug 'hoob3rt/lualine.nvim' {{{
" lua << EOF
" require('plenary.reload').reload_module('lualine', true)
" require('lualine').setup({
"   options = {
"     theme = 'gruvbox',
"   },
"   sections = {
"     lualine_x = {},
"     -- lualine_y = {},
"     -- lualine_z = {},
"   }
" })
" EOF
" "}}}
"
" " Plug 'nvim-tree/nvim-tree.lua' {{{
" lua << EOF
" require('nvim-tree').setup({
"   open_on_tab = false,
"   update_cwd = true,
"   update_focused_file = {
"     enable = true,
"     update_cwd = true,
"     ignore_list = {}
"   },
"   system_open = {
"     cmd = nil,
"     args = {}
"   },
" })
" EOF
" "}}}
" lua << EOF
" require('lspconfig').ruff_lsp.setup({
" })
" EOF
" "}}}
"
