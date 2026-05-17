vim.loader.enable()
_G.gh = function(x) return 'https://github.com/' .. x end

require('config')
require('plugins')
require('colorschemes')
pcall(require, 'local')
