return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },

  config = function()
    vim.keymap.set('n', '<leader>e', ':Telescope file_browser initial_mode=normal<CR>', { noremap = true })
    vim.keymap.set('n', '<leader>E', ':Telescope file_browser initial_mode=normal hidden=true<CR>', { noremap = true })
  end
}
