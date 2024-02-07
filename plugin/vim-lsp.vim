let g:lsp_log_verbose = 1
let g:lsp_settings_filetype_javascript = ['javascript-typescript-stdio']
if has("win32")
  let g:lsp_log_file = expand('~/vimfiles/vim-lsp.log')
else
  let g:lsp_log_file = expand('~/.vim/vim-lsp.log')
endif
