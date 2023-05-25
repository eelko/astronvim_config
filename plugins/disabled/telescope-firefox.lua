return {
  'dawsers/telescope-firefox.nvim',
  config = function()
    require('telescope').load_extension('firefox')

    -- These are the default values, usually correct for Linux.
    --
    -- For MacOS or Windows, adapt the configuration, search
    -- where your Firefox profile is. It is usually in these
    -- directories:
    --
    --    MacOS: "Library/Application Support/Firefox"
    --    Windows: "Appdata/Roaming/Mozilla/Firefox"
    --
    -- The url open command is also different depending on the OS,
    -- 'open' (MacOS), 'start firefox' or 'explorer' (Windows)
    --
    require('telescope').setup {
      extensions = {
        firefox = {
          url_open_command = 'start firefox',
          firefox_profile_dir = 'Library/Application Support/Firefox',
          firefox_profile_glob = '*.default*',
        },
      }
    }
  end,
  cmd = { "Telescope firefox search", "Telescope firefox bookmarks", "Telescope firefox history" },
  keys = {
    { "<leader>Ff", "<cmd>Telescope firefox search<cr>",    desc = "Telescope firefox visited places" },
    { "<leader>Fb", "<cmd>Telescope firefox bookmarks<cr>", desc = "Telescope firefox bookmarks" },
    { "<leader>Fh", "<cmd>Telescope firefox history<cr>",   desc = "Telescope firefox history" },
  },
}
