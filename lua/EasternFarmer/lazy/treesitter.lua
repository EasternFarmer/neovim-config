return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = { "c", "lua", "vim", "python", "markdown" },
                auto_install = true,
                indent = { enable = true },    
                highlight = { enable = true },
                incremental_selection = { enable = true },
            })
            installer = require('nvim-treesitter.install') 
            installer.prefer_git = false
            installer.compilers = { "clang", "gcc", "zig" }


        end
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        after = "nvim-treesitter",
        config = function()
            require('treesitter-context').setup()
        end
    }
}
