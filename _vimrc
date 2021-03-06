execute pathogen#infect()
syntax on
filetype plugin indent on
let g:vim_markdown_folding_disabled=1
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
sourc $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
" Sets up all the tabs to be spaces (soft-tabs)
set expandtab
set tabstop=4
set shiftwidth=4

" Lines/Columns meant for half the screen 
" Only use this in windows. In SSH ubuntu, it will blow up
"set lines=62 columns=110

" sets the fonts
set guifont=Lucida_Console:h10

filetype plugin on

" Remaps ESC to jj
imap jj <Esc>

" Sets the line number
set number

" sets the colorscheme
colors molokai

" removes highlighting search terms after you hit enter after /
:set nohlsearch

" maps cntrol+n to open NERDTree
map <C-n> :NERDTreeToggle<CR>

"Set current directory to current file
set autochdir

" rotate13 mapped to F3, equivalent to ggg?G pressed fast
map <F3> ggVGg?

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

