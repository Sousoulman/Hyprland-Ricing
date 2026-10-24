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
