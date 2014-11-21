execute pathogen#infect()
syntax on
filetype plugin indent on
set number
set hlsearch
if has("autocmd")
	autocmd BufRead *.txt set tw=78
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal g'\"" |
	\ endif
endif

map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFocusToggle<CR>
map <C-t> <Leader>mbe
map <C-i> <Leader>cm
