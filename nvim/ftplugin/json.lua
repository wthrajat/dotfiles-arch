
local root_files = { ".git", "package.json" }
local paths = vim.fs.find(root_files, { stop = vim.env.HOME })

vim.lsp.start({
  name = "hyperjump-json-schema",
  cmd = { "node", "/home/rajat/rust/lsp/diya-json/language-server/src/server.js", "--stdio" },
  root_dir = vim.fs.dirname(paths[1]),
    settings = {
   jsonSchemaLanguageServer = {
      defaultDialect = "https://json-schema.org/draft/2020-12/schema"
   }
  }
})

