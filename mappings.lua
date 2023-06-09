-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>uB"] = { "<cmd>highlight Normal guibg=NONE<cr>", desc = "Remove Background" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["<C-,>"] = { ":bprev<CR>", desc = "Previous Buffer" },
    ["<C-.>"] = { ":bnext<CR>", desc = "Next Buffer" },
    ["<leader>Op"] = { "<cmd>:w !pycharm %<cr>", desc = "Open current buffer in Pycharm" },
    ["<leader>Oc"] = { "<cmd>:w !code %<cr>", desc = "Open current buffer in Visual Studio Code" },
    ["[q"] = { "<cmd>:cprev<cr>", desc = "Previous in Quicklist" },
    ["]q"] = { "<cmd>:cnext<cr>", desc = "Next in Quicklist" },
    ["[Q"] = { "<cmd>:cfirst<cr>", desc = "First in Quicklist" },
    ["]Q"] = { "<cmd>:clast<cr>", desc = "Last in Quicklist" },
    -- ["<C-x>"] = { "<cmd>:delete<cr>", desc = "Delete never copies" },
    -- ["d"] = { "\"_d", desc = "Delete never copies" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<S-Esc>"] = { "<C-\\><C-n>", desc = "We want Esc to behave like Esc in the terminal..." },
  },
  c = {
    ["<C-a>"] = { "<C-b>", desc = "Go to start of line" },
  },
  i = {
    ["<C-s>"] = { "<cmd>:w<cr>", desc = "Save in insert mode" },
  }
}
