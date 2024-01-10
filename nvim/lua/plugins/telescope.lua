local Util = require("util")

return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      enabled = vim.fn.executable("make") == 1,
      config = function()
        Util.on_load("telescope.nvim", function()
          require("telescope").load_extension("fzf")
        end)
      end
    }
  },
  
  config = function()
    local builtin = require("telescope.builtin")

    vim.keymap.set('n', '<leader>p', builtin.find_files, {})
    -- vim.keymap.set('n', '<leader>h', function() builtin.find_files find_command=rg,'--ignore','--hidden','--files' prompt_prefix=🔍 end, {})
    vim.keymap.set('n', '<leader>h', function() builtin.find_files({ hidden = true, prompt_prefix = '🔍 ' }) end, {})
    vim.keymap.set({ 'n', 'v' }, '<leader>F', builtin.grep_string, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
  end
}
