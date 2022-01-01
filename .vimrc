" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

set nocompatible
set clipboard^=unnamedplus
filetype plugin indent on
syntax on
set number
" Keep the cursor in the middle of the screen
set scrolloff=999
set nowrap

" Handling splits
set splitbelow
set splitright
" Navigate between splits while saving a keystroke
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Resize vertical windows with <Leader>+/-
" This doesn't work for some reason? Use Ctrl-w > and Ctrl-w <
"nnoremap <silent> <Leader>+ :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
"nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" Netrw configurations
" See https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/
let g:netrw_liststyle = 3 " Change default view type
let g:netrw_browse_split = 4 " Open files in previous window
let g:netrw_winsize = 15 " percent of window
let g:netrw_localcopydircmd = 'cp -r'
" Mappings
function! NetrwMapping()
	" NNN-like key mappings
	nmap <buffer> h u " Go back in history
	"nmap <buffer> h -^ " Go up a directory
	nmap <buffer> l <CR> " Open directory or file

	"nmap <buffer> q :Lexplore<CR> " Close netrw
endfunction
" Only open ProjectDrawer and Terminal if we don't specify a file to open
if argc() == 0
	augroup Netrw
		autocmd!
		autocmd VimEnter * Vexplore " if argc() == 0 | Vexplore | endif
		autocmd FileType netrw call NetrwMapping() " Set mappings
	augroup END
	
	" Terminal configurations
	" TODO: Figure out how to hide the terminal buffer from lightlines
	" bufferline
	augroup Terminal
		autocmd!
		autocmd VimEnter * wincmd p " Go to the previous window
		" Open the terminal on VimEnter
		" Do NOT put anything on the same line after this otherwise it will be run in
		" bash
		" kill=hup instructs vim to kill running processes in terminal when using :q
		" i.e. avoiding "Job still running in buffer !bash"
		autocmd VimEnter * terminal ++rows=15 ++kill=hup
		autocmd VimEnter * wincmd p " Return to the editor window
	augroup END
endif

" Quit all with ,
" Will prompt for saving - to disable, include ! after :qa
" This makes it easy to close netrw and terminal in one keystroke
nnoremap , :qa<CR>

" lightline
set showtabline=2
set laststatus=2
set noshowmode
let g:lightline = {
			\ 	'colorscheme': 'wombat',
			\ 	'tabline': {
			\ 		'left': [ ['buffers'] ],
			\ 		'right': [ ['bufnum'] ]
			\ 	},
			\ 	'component_expand': {
			\ 		'buffers': 'lightline#bufferline#buffers'
			\ 	},
			\	'component_type': {
			\		'buffers': 'tabsel'
			\	}
			\ }

" Tab preferences
set tabstop=4
set noexpandtab
set shiftwidth=4

" ctags
" remap ins-completion for tags
noremap <C-.> <C-X><C-J>
" auto-generate tags file
"autocmd FileType 

" templates
autocmd BufNewFile *.tex 0r ~/.vim/templates/tex/apa.tex
let g:tex_flavor='latex' " Avoid starting in plaintex

" Spell checking
autocmd FileType markdown,tex setlocal spell

" vim-ditto
" " Use autocmds to check your text automatically and keep the highlighting
" up to date (easier):
autocmd FileType markdown,tex,text DittoOn  " Turn on Ditto's autocmds
nmap <leader>di <Plug>ToggleDitto      " Turn Ditto on and off

" If you don't want the autocmds, you can also use an operator to check
" specific parts of your text:
" vmap <leader>d <Plug>Ditto	       " Call Ditto on visual selection
" nmap <leader>d <Plug>Ditto	       " Call Ditto on operator movement

nmap =d <Plug>DittoNext                " Jump to the next word
nmap -d <Plug>DittoPrev                " Jump to the previous word
nmap +d <Plug>DittoGood                " Ignore the word under the cursor
nmap _d <Plug>DittoBad                 " Stop ignoring the word under the cursor
nmap ]d <Plug>DittoMore                " Show the next matches
nmap [d <Plug>DittoLess                " Show the previous matches
