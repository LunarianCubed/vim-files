return {
  "L3MON4D3/LuaSnip",
  version = "v2.*", -- 使用 2.x 稳定版
  build = "make install_jsregexp", -- 可选，仅用于某些正则特性
  dependencies = {
    "rafamadriz/friendly-snippets", -- ✅ 社区代码片段集
  },
  config = function()
    local luasnip = require("luasnip")

    -- VSCode 格式代码片段加载器（来自 friendly-snippets）
    require("luasnip.loaders.from_vscode").lazy_load()

    -- 可选：设置历史记录/事件等
    luasnip.config.set_config({
      history = true,
      updateevents = "TextChanged,TextChangedI",
      enable_autosnippets = true,
    })
  end,
}

