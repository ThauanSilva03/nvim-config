return {
  "hrsh7th/cmp-nvim-lsp",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/lazydev.nvim", opts = {} },
  },
  config = function()
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local capabilities = cmp_nvim_lsp.default_capabilities()

    vim.lsp.config("*", {
      capabilities = capabilities,
    })

    local ok, pyright_config = pcall(require, "thauan.plugins.lsp.servers.pyright")
    vim.lsp.config("pyright", ok and pyright_config or {})

    local ok2, lua_config = pcall(require, "thauan.plugins.lsp.servers.lua_ls")
    vim.lsp.config("lua_ls", ok2 and lua_config or {})

  end,
}
