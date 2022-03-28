vim.cmd([[
  let g:tex_flavor='latex'
  let g:vimtex_view_method='zathura'
  let g:vimtex_quickfix_mode=0
  set conceallevel=1
  let g:tex_conceal='abdmg'
  let g:vimtex_compiler_latexmk = { 'options' : [ '-pdf', '-pdflatex="xelatex --shell-escape %O %S"', '-verbose', '-file-line-error', '-synctex=1', '-interaction=nonstopmode',  ] }
  map <leader>mb :VimtexCompile<cr>
  map <leader>mee :VimtexErrors<cr>
  autocmd FileType tex setlocal ts=2 sw=2 sts=0 expandtab spell
  let g:vimtex_complete_enabled = 1
  let g:vimtex_complete_close_braces = 1
  let g:vimtex_complete_ignore_case = 1
  let g:vimtex_complete_smart_case = 1
  let g:vimtex_compiler_progname='nvr'
  set spell spelllang=en_us
  set spellfile=$HOME/.config/nvim/spell/en.utf-8.add
  inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
  autocmd FileType tex setlocal ts=2 sw=2 sts=0 expandtab spell
]])
