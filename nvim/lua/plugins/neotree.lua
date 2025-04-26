return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  cmd = "Neotree",
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle Neotree" },
  },
  config = function()
    require("neo-tree").setup({
      enable_git_status = false,
      enable_diagnostics = false,

      event_handlers = {}, -- 清空所有自动事件
      filesystem = {
        follow_current_file = {
          enabled = false,
        },
        hijack_netrw_behavior = "disabled",
        use_libuv_file_watcher = false,
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
      buffers = {
        follow_current_file = {
          enabled = false,
        },
      },
    })
  end,
}

