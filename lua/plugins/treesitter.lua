
-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "c",
      "python",
      "cpp",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
