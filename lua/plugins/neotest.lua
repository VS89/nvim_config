local neotest_ns = vim.api.nvim_create_namespace("neotest")
vim.diagnostic.config({
  virtual_text = {
    format = function(diagnostic)
      -- Replace newline and tab characters with space for more compact diagnostics
      local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
      return message
    end,
  },
}, neotest_ns)
require("neotest").setup({
    adapters = {
        require("neotest-python")({
            dap = { justMyCode = false },
            args = { "--log-level", "INFO" },
            runner = "pytest",
            test_prefix = "test_",
        }),
        -- require("neotest-plenary"),
        -- require("neotest-vim-test")({
        --     ingore_file_types = { "python", "vim", "lua"}
        -- })
    }
})

