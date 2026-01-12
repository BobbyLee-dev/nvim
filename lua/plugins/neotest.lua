return {
  "nvim-neotest/neotest",
  dependencies = {
    "thenbe/neotest-playwright",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-playwright").adapter({
          options = {
            -- preset = "debug", -- 👈 THIS
            persist_project_selection = true,
            enable_dynamic_test_discovery = true,
          },
        }),
      },
    })
  end,
}
