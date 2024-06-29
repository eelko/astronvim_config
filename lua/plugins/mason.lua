-- Customize Mason plugins
---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "clangd", "lua_ls"
        -- add more arguments for adding more language servers
      },
      autoformat = false,
    },

  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "stylua",
        -- add more arguments for adding more null-ls sources
      },
      autoformat = false,
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    enabled = false
    -- overrides `require("mason-nvim-dap").setup(...)`
    -- opts = {
    --   ensure_installed = {
    --     "python",
    --     -- add more arguments for adding more debuggers
    --   },
    -- },
  },
}
