vim.keymap.set('n', '<Space>', '<Nop>')

-- Open a terminal
vim.keymap.set('n', '<leader>t', function()
        vim.cmd(":split | term")
end
)

-- Close a terminal
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

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

vim.keymap.set('n', '<leader>b', ":CMakeBuild<CR>", { desc = "building the project"})
vim.keymap.set('n', '<leader>r', ":CMakeRun<CR>", { desc = "open the bin"})
vim.keymap.set('n', '<leader>c', ":q<CR>", { desc = "quitting the current page"})
