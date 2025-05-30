return {
  {
    'rmagatti/auto-session',
    config = function()
      local auto_session = require 'auto-session'

      auto_session.setup {
        auto_restore_enable = false,
        auto_session_suppress_dir = { '~/', '~/Documents/', '~/Desktop/', '~/Downloads/' },
      }
      vim.keymap.set('n', '<leader>sr', '<cmd>SessionRestore<CR>', { desc = 'Restore session for cwd' })             --restore last workspace session for current
      vim.keymap.set('n', '<leader>ss', '<cmd>SessionSave<CR>', { desc = 'Save session for auto session root dir' }) --save workspace session for current
      vim.keymap.set('n', '<leader>sf', '<cmd>SessionSearch<CR>', { desc = 'Session search' })
      vim.keymap.set('n', '<leader>st', '<cmd>SessionToggleAutoSave<CR>', { desc = 'Toggle autosave' })
    end,
  },
}
