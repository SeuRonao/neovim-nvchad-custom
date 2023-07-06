local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.stylua,
  formatting.black,
  formatting.isort.with {
    extra_args = { "--profile black" },
  },
  lint.pylint,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
