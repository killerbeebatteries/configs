local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- python
  b.formatting.black,

  -- golang
  b.formatting.goimports_reviser,
  b.formatting.gofmt,
  b.formatting.golines,

  -- terraform
  b.formatting.terraform_fmt,

  -- bash
  b.formatting.shfmt,

  -- sql
  b.formatting.sqlformat,

  -- yaml
  b.formatting.yq,
  b.diagnostics.yamllint,

  -- sql
  b.diagnostics.sqlfluff.with({
    extra_args = { "--dialect", "postgres" },
  }),
  b.formatting.sqlformat,

}

null_ls.setup {
  debug = true,
  sources = sources,
}
