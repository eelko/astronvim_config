return {
  "iamcco/markdown-preview.nvim",
  ft = "markdown",
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
  keys = {
    { "<leader>um", "<cmd>MarkdownPreviewToggle<cr>", desc = "MarkdownPreviewToggle" },
  },
}
