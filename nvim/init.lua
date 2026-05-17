vim.loader.enable()
_G.gh = function(x) return 'https://github.com/' .. x end

require('plugins')
require('config')
require('colorschemes')
pcall(require, 'local')
