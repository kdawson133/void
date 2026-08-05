return {
  {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    version = '*',
    opts = {
        options = {
            mode = 'buffers',
            offsets = {
                {filetype = 'oil'},
            },
            separator_style = 'thin',
        },
    },
    highlights = {
        buffer_selected = {
            italic = false
        },
        indicator_selected = {
            fg = {attribute = 'fg', highlight = 'function'},
            italic = false
        },
    },
  },
}


