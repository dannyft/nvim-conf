return {
  lua_ls = {},
  vtsls = {},
  csharp_ls= {},
  phpactor = {
    root_dir = function(pattern)
      local util = require('lspconfig.util')
      local cwd = vim.uv.cwd()
      local root = util.root_pattern('composer.json', '.git', '.phpactor.json', '.phpactor.yml')(pattern)
      return util.path.is_descendant(cwd, root) and cwd or root
    end,
  },
}
