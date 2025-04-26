return {
  "ibhagwan/fzf-lua",
  cmd = "FzfLua",
  config = function()
    require("fzf-lua").setup({
      winopts = {
        height = 0.85,
        width = 0.80,
        preview = {
          default = "bat",
        },
      },
    })

    vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Find Files (fzf-lua)" })
    vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<cr>", { desc = "Live Grep (fzf-lua)" })
  end,
}

