" this will install vim-plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/bundle')
  Plug 'scrooloose/nerdtree'
  Plug 'morhetz/gruvbox'
	Plug 'vim-airline/vim-airline'
	Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " this is for auto complete, prettier and tslinting
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']  " list of CoC extensions ne  eded

	Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {

	" these two plugins will add highlighting and indenting to JSX and TSX files.
	Plug 'yuezk/vim-js'
	Plug 'HerringtonDarkholme/yats.vim'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'ryanoasis/vim-devicons'
call plug#end()
