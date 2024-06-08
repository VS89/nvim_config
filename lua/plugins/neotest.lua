require("neotest").setup({
    adapters = {
        require("neotest-python")({
            dap = { justMyCode = false },
            args = { "--log-level", "INFO" },
            runner = "pytest"
        }),
        -- require("neotest-plenary"),
        -- require("neotest-vim-test")({
        --     ingore_file_types = { "python", "vim", "lua"}
        -- })
    }
})

