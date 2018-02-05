" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
if !has('nvim')
  set ttymouse=xterm2
endif

" Enable mouse use in all modes
set mouse=a
" Send more characters for redraws
set ttyfast
