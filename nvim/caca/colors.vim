let g:theprimeagen_colorscheme = "gruvbox"
fun! ColorMyPencils()
  if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif

    set background=dark
    let g:gruvbox_invert_selection='0'
    if has('nvim')
        call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:theprimeagen_colorscheme])
    else
        " TODO: What the way to use g:theprimeagen_colorscheme
        colorscheme gruvbox
    endif
"    hi LspDiagnosticsVirtualTextError guifg=Red ctermfg=Red
     hi LspDiagnosticsVirtualTextWarning guifg=Orange ctermfg=Yellow
    lua require'lspconfig'.tsserver.setup{ on_attach=require'cmp_nvim_lsp'.on_attach }
endfun
call ColorMyPencils()
