return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").install({
            'rust',
            'c',
            'bash',
            'vim',
            'lua',
            'python',
            'zig',
            'vimdoc'
        })
    end,
}
