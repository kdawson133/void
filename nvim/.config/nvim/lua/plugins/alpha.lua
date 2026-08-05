return {
  {
    'goolord/alpha-nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      local alpha = require('alpha')
      local dashboard = require('alpha.themes.dashboard')
    
      dashboard.section.header.val = {
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
      }

      dashboard.section.buttons.val = {
        dashboard.button('e', '  > New File', ":ene <BAR> startinsert <CR>"),
        dashboard.button('o', '  > Toggle file picker', '<Cmd>Oil<CR>'),
        dashboard.button('f', '󰱼  > Find File', '<Cmd>Files<CR>'),
        dashboard.button('r', '  > Recent', '<Cmd>History<CR>'),
        dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
        dashboard.button('q', '  > Quit NVIM', '<Cmd>qa<CR>'),
      }
      alpha.setup(dashboard.opts)
    end,
  },
}

