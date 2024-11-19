-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<F1>', ':Neotree buffers reveal float<CR>', desc = 'NeoTree reveal', silent = true },
    { '<F2>', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<F3>', ':Neotree git_status reveal float<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    buffers = {
      window = {
        mappings = {
          ['<F1>'] = 'close_window',
        },
      },
    },
    filesystem = {
      window = {
        mappings = {
          ['<F2>'] = 'close_window',
        },
      },
    },
    git_status = {
      window = {
        mappings = {
          ['<F3>'] = 'close_window',
        },
      },
    },
  },
}
