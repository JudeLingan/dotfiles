vim.loader.enable()
_G.gh = function(x) return 'https://github.com/' .. x end

require('config')
require('plugins')
pcall(require, 'local')
