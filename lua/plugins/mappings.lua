return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          -- ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          -- ["<Leader>bD"] = {
          --   function()
          --     require("astroui.status").heirline.buffer_picker(function(bufnr)
          --       require("astrocore.buffer").close(bufnr)
          --     end)
          --   end,
          --   desc = "Pick to close",
          -- },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          -- ["<Leader>b"] = { name = "Buffers" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
          ["[q"] = { "<cmd>:cprev<cr>", desc = "Previous in Quicklist" },
          ["]q"] = { "<cmd>:cnext<cr>", desc = "Next in Quicklist" },
          ["[Q"] = { "<cmd>:cfirst<cr>", desc = "First in Quicklist" },
          ["]Q"] = { "<cmd>:clast<cr>", desc = "Last in Quicklist" },
          ["<leader>dx"] = {"lua require('dapui').open({reset = true})<cr>", desc = "Reset debug window layout"},
          ["gs"] = { "<cmd>:ClangdSwitchSourceHeader<cr>", desc = "Switch between source/header"},
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
        c = {
          ["<C-a>"] = { "<C-b>", desc = "Go to start of line" },
        },
        i = {
          ["<C-a>"] = { "<C-o>0", desc = "Go to start of line" },
          ["<C-s>"] = { "<cmd>:w<cr>", desc = "Save in insert mode" },
        }
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function()
              vim.lsp.buf.hover()
            end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function()
              vim.lsp.buf.declaration()
            end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
