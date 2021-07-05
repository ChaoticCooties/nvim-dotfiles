" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Environmental Plugins
Plug 'glepnir/dashboard-nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-surround'
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'mhartington/formatter.nvim'
Plug 'windwp/nvim-autopairs'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-media-files.nvim'

" Latex Plugins
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
Plug 'KeitaNakamura/tex-conceal.vim'

" C/C++ Plugins
Plug 'jackguo380/vim-lsp-cxx-highlight'

" HTML/CSS Plugins
Plug 'mattn/emmet-vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"source ~/.config/nvim/vimscript/term.vim
"source ~/.config/nvim/vimscript/defaults.vim
for f in glob('$HOME/.config/nvim/vimscript/*.vim', 0, 1)
  execute 'source' f
endfor

lua require('init')

" Auto reload
if has ('autocmd') " Remain compatible with earlier versions
 augroup init.vim     " Source vim configuration upon save
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif " has autocmd