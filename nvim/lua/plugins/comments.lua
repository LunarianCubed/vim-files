return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("Comment").setup({
      mappings = {
        basic = false, -- disable default <gcc>/<gc>/<gb>
        extra = false,
      },
    })

    -- Manual keymaps
    local api = require("Comment.api")
    vim.keymap.set("n", "<gc>", api.toggle.linewise.current, { desc = "Toggle comment line" })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "sml", "sig", "grm", "lex" },
      callback = function()
        vim.opt_local.commentstring = "(* %s *)"
      end,
    })

  end,
}

