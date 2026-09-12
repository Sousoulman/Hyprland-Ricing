vim.lsp.config('clangd', {
    cmd = { 'clangd' },
    filetypes = {'c', 'h'},
})

vim.lsp.config('zubanls', {
	name = "ZubanLS",
	cmd = { "zuban", "server" },
	root_markers = { "pyproject.toml", ".git" },
	filetypes = { "python" },
})

vim.lsp.config('lua_ls', {
    cmd = { "lua-language-server" },
    filetypes = { "lua" }
})

vim.lsp.config('qml_ls', {
        cmd = { "qml-language-server"},
        filetypes = { "qml" }
})

vim.lsp.enable({'clangd', 'zubanls', 'roslyn', 'lua_ls', 'qml_ls'})

vim.keymap.set('n', '<leader>n', function()
      vim.diagnostic.config({ virtual_lines = { current_line = true }, virtual_text = false }) 

      vim.api.nvim_create_autocmd('CursorMoved', {
    group = vim.api.nvim_create_augroup('line-diagnostics', { clear = true }),
    callback = function()
      vim.diagnostic.config({ virtual_lines = false, virtual_text = true })
      return true
    end,
  })
end)

vim.o.autocomplete = true

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger = true})
    end
    end,
})
