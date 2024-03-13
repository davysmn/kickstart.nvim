return {
  'norcalli/nvim-colorizer.lua',
  config = function()
    require('colorizer').setup {
      'vue',
      'typescript',
      'javascript',
      'vue',
      'css',
      html = {
        mode = 'foreground',
      },
    }
  end,
}
