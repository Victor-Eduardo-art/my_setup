call plug#begin()
   Plug 'scrooloose/nerdtree'
   Plug 'Rigellute/shades-of-purple.vim'
call plug#end()

if (has("termguicolors"))
 set termguicolors
endif


	
syntax enable
set number
set background=dark
set mouse=a

colorscheme shades_of_purple

nnoremap <C-o> :NERDTreeToggle <cr>
nnoremap <C-i> :PlugInstall <cr>
