local gh = function(repo)
  return "https://github.com/" .. repo
end

vim.pack.add({
  gh("mason-org/mason.nvim"),
  gh("mason-org/mason-lspconfig.nvim"),
})

require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls" },
})

vim.lsp.enable("lua_ls")
